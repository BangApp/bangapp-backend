<?php

namespace App\Http\Controllers;
use App\Flutterwave;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\DB;

namespace App\Http\Controllers;

use App\Withdrawal;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class FlutterwaveController extends Controller
{


    public static function checkProvider($phoneNumber)
    {
        $firstThreeDigits = substr($phoneNumber, 0, 3);

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
                return 'mpesa';
        }
    }


    public function makePayment($postId, $userId, $type, $amount, $phone_number)
    {
        $user = User::find($userId);
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
            'amount' =>  $amount,
            'email' => $user->email,
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
                'email' => $user->email,
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
        $phone_number = $validated['phone_number'];

        // Call the makePayment method
        return $this->makePayment($postId, $userId, $type, $amount, $phone_number);
    }


    public function initiateTransfer(Request $request)
    {
        $flutterwaveSecretKey = env('FLUTTERWAVE_SECRET_KEY');
        $url = env('FLUTTERWAVE_URL');

        // Fetch data from the request
        $accountBank = $request->input('account_bank');
        $accountNumber = $request->input('account_number');
        $user_id = $request->input('user_id');
        $amount = $request->input('amount');
        $reference = $request->input('reference');

        $client = new Client();

        // Define the headers
        $headers = [
            'Authorization' => "Bearer $flutterwaveSecretKey",
            'Content-Type' => 'application/json',
        ];

        // dd($accountBank, $accountNumber, $amount, $reference);

        // Define the payload (body parameters)
        $withdaw = new \App\Withdrawal();
        $withdaw->amount = $amount;
        $withdaw->user_id = $user_id;
        $withdaw->destination = $accountNumber;
        $withdaw->channel = $this->checkProvider($accountBank);
        $withdaw->save();
        

        
        $payload = [
            'account_number' => $accountNumber,
            'account_bank' =>  $this->checkProvider($accountBank),
            'amount' => $amount,
            'currency' => 'TZS',
            'narration' => 'Payment for goods',
            'beneficiary_name' => 'Example User',
            'meta' => [
                [
                    'sender' => 'Sample User',
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
                return response()->json([
                    'status' => 'success',
                    'data' => $response_data
                ]);
                
                if ($response_data['data']['status'] == 'success') {
                    $withdaw->status = 'success';
                    $withdaw->save();
                }
                
            } else {
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

    // public function webhook(Request $request)
    // {

    //     return response()->json([
    //         'message' => 'Callback received and processed successfully.'
    //     ], 200);
    // }


    public function webhook(Request $request)
    {
        $payload = $request->all();


        if ($payload['event'] === 'charge.completed') {
            $data = $payload['data'];
            $customer = $data['customer'];

            // Decode the tx_ref field
            $txRef = $data['tx_ref'];

            // Split tx_ref to get the ref and encoded meta part
            list($ref, $encodedMeta) = explode('_', $txRef, 2);

            // Decode the metadata
            $decodedMeta = json_decode(base64_decode($encodedMeta), true);

            // dd($decodedMeta);

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

            // Save the record to the database
            $flutterwave->save();

            return response()->json([
                'message' => 'Callback received and processed successfully.'
            ], 200);


            // return response()->json(['message' => 'Event not supported'], 400);
        }


    }

    public function getPaymentStatus($transactionId){
        $payment = \App\Flutterwave::where('reference', $transactionId)->where('status', 'successful')->first();
        if ($payment) {
            return response()->json(['status' => true, 'post_id' => $payment->post_id], 200);
        } else {
            return response()->json(['status' => false], 200);
        }
    }

    public function getUserInsights($user_id){
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
        // Calculating total amount earned from user's posts
        $totalAmountPost = $userPosts->sum('amount');
        $totalAmountSubscription = $userSubscriptions->sum('amount');
        $totalAmountMessages = $userMessages->sum('amount');
        $totalAmount = ($totalAmountPost + $totalAmountSubscription + $totalAmountMessages) * 0.7;
        return response()->json(['total_earned' => $totalAmount, 'total_post'=>$totalAmountPost, 'total_subscription'=>$totalAmountSubscription, 'total_messages'=>$totalAmountMessages] , 200);
    }

}