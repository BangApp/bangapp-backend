<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Log;

use Illuminate\Http\Request;
use GuzzleHttp\Client;

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
                return 'tigopesa';
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


        $data = [
            'amount' =>  $amount,
            'email' => $user->email,
            'tx_ref' => "67677677",
            'currency' => 'TZS',
            'redirect_url' =>'https://google.com',
            'phone_number' => $phone_number,
            'fullname' => $user->name,
            'meta' => [
                "postId"=> $postId,
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
        return $this->makePayment(  $postId,  $userId, $type, $amount, $phone_number);
    }


    public function initiateTransfer(Request $request)
    {
        $flutterwaveSecretKey = env('FLUTTERWAVE_SECRET_KEY');
        $url = env('FLUTTERWAVE_URL');

        // Fetch data from the request
        $accountBank = $request->input('account_bank');
        $accountNumber = $request->input('account_number');
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
        $payload = [
            'account_number' => $accountNumber,
            'account_bank' => $accountBank,
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

    public function webhook(Request $request){

        \Illuminate\Support\Facades\Log::info(json_encode($request->all()));
        \Illuminate\Support\Facades\Log::info("flutter wave callback data");
        return true;
    }

    public function getPaymentStatus($transactionId){
        $payment = Flutterwave::where('tx_ref', $transactionId)->where('status', 'success')->first();
        if ($payment) {
            return response()->json(['status' => true, 'post_id' => $payment->post_id], 200);
        } else {
            return response()->json(['status' => false], 200);
        }
    }

    public function getUserInsights($user_id){
        $userPosts = DB::table('flutterwaves')
                        ->join('posts', 'flutterwaves.post_id', '=', 'posts.id')
                        ->select('flutterwaves.amount')
                        ->where('posts.user_id', $user_id)
                        ->where('flutterwaves.type', 'post')
                        ->get();
        $userSubscriptions = DB::table('flutterwaves')
                                ->select('amount')
                                ->where('post_id', $user_id)
                                ->where('type', 'subscription')
                                ->get();
        $userMessages = DB::table('flutterwaves')
                            ->select('amount')
                            ->where('post_id', $user_id)
                            ->where('type', 'message')
                            ->get();
        // Calculating total amount earned from user's posts
        $totalAmountPost = $userPosts->sum('amount');
        $totalAmountSubscription = $userSubscriptions->sum('amount');
        $totalAmountMessages = $userMessages->sum('amount');
        $totalAmount = $totalAmountPost + $totalAmountSubscription + $totalAmountMessages;
        return response()->json(['total_earned' => $totalAmount, 'total_post'=>$totalAmountPost, 'total_subscription'=>$totalAmountSubscription, 'total_messages'=>$totalAmountMessages] , 200);
    }

}