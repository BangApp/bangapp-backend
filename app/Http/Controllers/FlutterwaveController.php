<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use GuzzleHttp\Client;

namespace App\Http\Controllers;

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
            'email' => 'user@example.com',
            'tx_ref' => "67677677",
            'currency' => 'TZS',
            'redirect_url' =>'https://google.com',
            'phone_number' => $phone_number,
            'fullname' => 'Example User',
            'meta' => [
                "postId"=> $postId,
                "userId" => $userId,
                "type" => $type
            ],
            'customer' => [
                'email' => 'user@example.com',
                'phonenumber' => $phone_number,
                'name' => 'Example User' 
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
            // Handle request exception
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    public function webhook(Request $request){
        dd($request->all());
    }

}