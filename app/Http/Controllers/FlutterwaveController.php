<?php

namespace App\Http\Controllers;
use GuzzleHttp\Client;
use App\Withdrawal;
use Illuminate\Http\Request;

class FlutterwaveController extends Controller
{


    public static function checkProvider($phoneNumber)
    {
        $firstThreeDigits = substr($phoneNumber, 0, 3);

        \Log::info($firstThreeDigits);
        \Log::info('first three digits');

        switch ($firstThreeDigits) {
            case '074':
            case '075':
            case '076':
                return 'mpesa';
            case '071':
            case '065':
            case '067':
                return 'tigo';
            case '078':
            case '068':
            case '069':
                return 'airtel';
            case '061':
            case '062':
            case '069':
                return 'halopesa';
            default:
                return 'tigo';
        }
    }


    public function makePayment($postId, $userId, $type, $amount, $phone_number)
    {
        $user = \App\User::find($userId);
        $post = \App\Post::find($postId);
        $flutterwaveSecretKey = env('FLUTTERWAVE_SECRET_KEY');
        $url = env('FLUTTERWAVE_URL_PAY');

        $client = new Client();
        $headers = [
            'Authorization' => "Bearer $flutterwaveSecretKey",
            'Content-Type' => 'application/json',
        ];

        $ref = random_int(100000, 99999999999);

        $ref = random_int(100000, 99999999999);

        // Meta data to be included in the transref
        $meta = [
            "postId" => $postId,
            "userId" => $userId,
            "type" => $type
        ];

        // Encode the metadata as JSON and then base64 encode it to make it URL-safe
        $encodedMeta = base64_encode(json_encode($meta));

        // Combine the random ref and encoded metadata
        $transref = $ref . '_' . $encodedMeta;


        $data = [
            'amount' =>  $amount ?? $post->price,
            'email' => "support@bangapp.pro",
            'tx_ref' => $transref,
            'currency' => 'TZS',
            'redirect_url' => 'https://google.com',
            'phone_number' => $phone_number,
            'fullname' => $user->name,
            'meta' => [
                "postId" => $postId,
                "userId" => $userId,
                "type" => $type
            ],
            'customer' => [
                'email' => "support@bangapp.pro",
                'phonenumber' => $phone_number,
                'name' => $user->name,
            ]
        ];

        try {
            $response = $client->post($url, [
                'headers' => $headers,
                'json' => $data,
            ]);

            $statusCode = $response->getStatusCode();
            $responseBody = json_decode($response->getBody(), true);

            return response()->json([
                'status' => $statusCode,
                'response' => $responseBody
            ]);
        } catch (\Exception $e) {
            // Handle errors
            return response()->json([
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    public function pay(Request $request)
    {
        // Validate the incoming request
        $validated = $request->validate([
            'post_id' => 'required|string',
            'user_id' => 'required|string',
            'type' => 'required|string',
            'amount' => 'required|string',
            'phone_number' => 'required',
        ]);

        // Extract the validated parameters
        $postId = $validated['post_id'];
        $userId = $validated['user_id'];
        $type = $validated['type'];
        $amount = $validated['amount'];
        $phone_number = $this->formatPhoneNumber($validated['phone_number']);

        // Call the makePayment method
        return $this->makePayment($postId, $userId, $type, $amount, $phone_number);
    }


    public function initiateTransfer(Request $request)
    {
        $flutterwaveSecretKey = env('FLUTTERWAVE_SECRET_KEY');
        $url = env('FLUTTERWAVE_URL');
        // Fetch data from the request
        // $accountBank = $request->input('account_bank');
        $user_id = $request->input('user_id');
        
        $amount = $request->input('amount');
        $user = \App\User::find($user_id);
        $client = new Client();
        $accountNumber = $user->phone_number;
        // Define the headers
        $headers = [
            'Authorization' => "Bearer $flutterwaveSecretKey",
            'Content-Type' => 'application/json',
        ];

        // Define the payload (body parameters)
        $withdaw = new Withdrawal();
        $withdaw->amount = $amount;
        $withdaw->user_id = $user_id;
        $withdaw->destination = $accountNumber;
        $withdaw->channel = $this->checkProvider($accountNumber);
        $withdaw->save();

        $payload = [
            'account_number' => '+255' . ltrim($accountNumber, '0'),
            'account_bank' =>  $this->checkProvider($accountNumber),
            'amount' => $amount,
            'currency' => 'TZS',
            'narration' => 'Payment for goods',
            'beneficiary_name' => $user->name,
            'meta' => [
                [
                    'sender' => $user->name,
                    'sender_country' => 'TZ',
                    'sender_address' => 'Block-XM Kivukoni Road',
                ]
            ],
        ];

        try {
            // Send the POST request
            $response = $client->post($url, [
                'headers' => $headers,
                'json' => $payload,
            ]);

            $response_data = json_decode($response->getBody(), true);
            if ($response->getStatusCode() == 200) {

                if ($response_data['status'] == 'success') {
                    $withdaw->status = 'pending';
                    $withdaw->reference_number = $response_data['data']['id'];
                    $withdaw->save();
                    $pushNotificationService = new \App\Http\Controllers\PushNotificationService();
                    $pushNotificationService->sendPushNotification($user->device_token, $user->name, $this->withdrawMessageNotification(), $withdaw->id, 'withdraw',$user->name,$user->id);
                }

                return  $response_data;

            } else {
                $withdaw->status = 'fail';
                    $withdaw->reference_number = $response_data['data']['id'];
                    $withdaw->save();
                return response()->json([
                    'status' => 'fail',
                    'message' => $response_data['message'] ?? 'Unknown error'
                ]);
            }
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ], 500);

        }
    }


    public function webhook(Request $request)
    {
        $payload = $request->all();

        if ($payload['event'] === 'charge.completed') {
            $data = $payload['data'];
            $customer = $data['customer'];

            $txRef = $data['tx_ref'];

            // Split tx_ref to get the ref and encoded meta part
            list($ref, $encodedMeta) = explode('_', $txRef, 2);

            // Decode the metadata
            $decodedMeta = json_decode(base64_decode($encodedMeta), true);

            // Extract meta fields if decoded successfully
            if ($decodedMeta) {
                $postId = $decodedMeta['postId'];
                $userId = $decodedMeta['userId'];
                $type = $decodedMeta['type'];
            } else {
                return response()->json(['message' => 'Invalid tx_ref format.'], 400);
            }

            // Save to the flutterwaves table
            $flutterwave = new \App\Flutterwave();
            $flutterwave->response = json_encode($payload);
            $flutterwave->message = $data['processor_response'];
            $flutterwave->user = $customer['name'];
            $flutterwave->transactionstatus = $data['status'];
            $flutterwave->operator = $data['payment_type'];
            $flutterwave->reference = $txRef;
            $flutterwave->externalreference = $data['flw_ref'];
            $flutterwave->utilityref = $data['narration'];
            $flutterwave->amount = $data['amount'];
            $flutterwave->transid = $data['id'];
            $flutterwave->msisdn = $customer['phone_number'];
            $flutterwave->mnoreference = $data['account_id'];
            $flutterwave->submerchantAcc = ''; // Leave empty if no submerchant account in payload

            // Set extracted values for type, user_id, and post_id
            $flutterwave->type = $type;
            $flutterwave->user_id = $userId;
            $flutterwave->post_id = $postId;
            $flutterwave->save();

            return response()->json([
                'message' => 'Callback received and processed successfully.'
            ], 200);

        }


    }

    public function getPaymentStatus($transactionId){
        $payment = \App\Flutterwave::where('reference', $transactionId)->where('transactionstatus', 'successful')->first();
        if ($payment) {
            return response()->json(['status' => true, 'post_id' => $payment->post_id], 200);
        } else {
            return response()->json(['status' => false], 200);
        }
    }

    public function getUserInsights($user_id){
        $this->checkAndUpdateWithdrawalsStatus($user_id);
        $userPosts = \Illuminate\Support\Facades\DB::table('flutterwaves')
                                ->join('posts', 'flutterwaves.post_id', '=', 'posts.id')
                                ->select('flutterwaves.amount')
                                ->where('posts.user_id', $user_id)
                                ->where('flutterwaves.type', 'post')
                                ->get();
        $userSubscriptions = \Illuminate\Support\Facades\DB::table('flutterwaves')
                                ->select('amount')
                                ->where('post_id', $user_id)
                                ->where('type', 'subscription')
                                ->get();
        $userMessages = \Illuminate\Support\Facades\DB::table('flutterwaves')
                                ->select('amount')
                                ->where('post_id', $user_id)
                                ->where('type', 'message')
                                ->get();
        $userWithdrawals = \Illuminate\Support\Facades\DB::table('withdrawals')
                                ->select('amount')
                                ->where('user_id', $user_id)
                                ->where('status', 'complete')
                                ->get();
        // Calculating total amount earned from user's posts
        $totalAmountPost = $userPosts->sum('amount');
        $totalAmountSubscription = $userSubscriptions->sum('amount');
        $totalAmountMessages = $userMessages->sum('amount');
        $totalUserWithdrawals = $userWithdrawals->sum('amount');
        $subTotalAmount = ($totalAmountPost + $totalAmountSubscription + $totalAmountMessages) * 0.7;
        $totalAmount = $subTotalAmount -  $totalUserWithdrawals;
        return response()->json(['sub_total'=> $subTotalAmount, 'total_earned' => $totalAmount, 'total_post'=>$totalAmountPost, 'total_subscription'=>$totalAmountSubscription, 'total_messages'=>$totalAmountMessages, 'total_user_withdrawals'=>$totalUserWithdrawals] , 200);
    }

    public function withdrawMessageNotification()
    {
        return "Your withdrawal request is being processed.";
    }

    public function sendPayementNotification($type)
    {
        switch ($type) {
            case 'value':
                # code...
                break;

            default:
                # code...
                break;
        }

    }

    public function getTransactionStatus($transId)
    {
        $flutterwaveSecretKey = env('FLUTTERWAVE_SECRET_KEY');
        $url = env('FLUTTERWAVE_URL');
        $client = new Client();
        // Define the headers
        $headers = [
            'Authorization' => "Bearer $flutterwaveSecretKey",
            'Content-Type' => 'application/json',
        ];
        $finalUrl = rtrim($url, '/') . '/' . $transId;
        $response = $client->get($finalUrl, [
            'headers' => $headers,
        ]);
        return $response;
    }

    public function checkAndUpdateWithdrawalsStatus($userId)
    {
        $pendingWithdrawals = Withdrawal::where('user_id', $userId)
                                        ->where('status', 'pending')
                                        ->get();
        foreach ($pendingWithdrawals as $withdrawal) {
            $reference = $withdrawal->reference_number;
            $response = $this->getTransactionStatus($reference);
            $responseData = json_decode($response->getBody()->getContents(), true);

            if ($responseData['status'] == 'success' && $responseData['data']['status'] == 'SUCCESSFUL') {
                $withdrawal->status = 'complete';
                $withdrawal->fee = $responseData['data']['fee'];
                $withdrawal->save();
            }
        }
        return 'Withdrawals status checked and updated.';
    }

    public function getUserWithdrawals($userId)
    {
        $withdrawals = Withdrawal::with('user')
            ->where('user_id', $userId)
            ->get();

        return response()->json([
            'success' => true,
            'data' => $withdrawals,
        ]);
    }

   public function getUserPayedPosts($userId)
    {
        // Fetch posts paid for by the user, including user and post details
        $userPayedPosts = \Illuminate\Support\Facades\DB::table('flutterwaves')
            ->join('posts', 'flutterwaves.post_id', '=', 'posts.id')
            ->join('users', 'flutterwaves.user_id', '=', 'users.id') // Assuming there's a `user_id` in `flutterwaves`
            ->select(
                'flutterwaves.amount',
                'flutterwaves.type',
                'posts.id as post_id',
                'posts.body as post_title',
                'posts.image as posts_image',
                'posts.type as posts_type',
                'users.id as user_id',
                'users.name as user_name',
            )
            ->where('posts.user_id', $userId)
            ->where('flutterwaves.type', 'post')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $userPayedPosts,
        ]);
    }


    public function getUserSubscriptions($userId)
    {
        $userSubscriptions = \Illuminate\Support\Facades\DB::table('flutterwaves')
                                ->join('users', 'flutterwaves.user_id', '=', 'users.id') // Assuming there's a `user_id` in `flutterwaves`
                                ->select('amount','users.id as user_id','users.name as user_name','users.email as user_email')
                                ->where('post_id', $userId)
                                ->where('type', 'subscription')
                                ->get();
        return response()->json([
            'success' => true,
            'data' => $userSubscriptions,
        ]);
    }

    public function getUserMessages($userId)
    {
        $userMessages = \Illuminate\Support\Facades\DB::table('flutterwaves')
                                ->join('users', 'flutterwaves.user_id', '=', 'users.id') // Assuming there's a `user_id` in `flutterwaves`
                                ->select('amount','users.id as user_id','users.name as user_name','users.email as user_email')
                                ->where('post_id', $userId)
                                ->where('type', 'message')
                                ->get();

        return response()->json([
            'success' => true,
            'data' => $userMessages,
        ]);
    }

    function formatPhoneNumber($number) {
        $number = preg_replace('/\D/', '', $number);
        if (strlen($number) == 9 && $number[0] != '0') {
            return '0' . $number;  
        }
        if (strlen($number) == 10 && $number[0] == '0') {
            return $number;  
        }
        return $number;
    }


}
