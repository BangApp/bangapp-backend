<?php

namespace App\Http\Controllers;

use Kreait\Firebase\Messaging\AndroidConfig;
use Kreait\Firebase\Messaging\AndroidNotification;
use Kreait\Firebase\Messaging\Notification;
use Kreait\Firebase\Messaging\Message;
use Kreait\Firebase\Messaging\Notification as FcmNotification;
use Kreait\Firebase\Messaging\CloudMessage;
use GuzzleHttp\Client;
class PushNotificationService extends Controller
{
    //
    public function sendPushNotification($deviceToken, $title, $body, $notificationId, $type, $userName = null, $userId = null)
    {
        $client = new Client();
    
        try {
            $response = $client->post('http://bangapp.pro:3005/send-notification', [
                'json' => [
                    'token' => $deviceToken,
                    'title' => $title,
                    'body' => $body,
                    'notificationId' => $notificationId,
                    'type' => $type,
                    'userName' => $userName,
                    'userId' => $userId,
                ]
            ]);
    
            if ($response->getStatusCode() === 200) {
                return 'Notification sent successfully';
            } else {
                return 'Failed to send notification';
            }
        } catch (\Exception $e) {
            return 'Error: ' . $e->getMessage();
        }
    }

    public function sendPushNotification12($deviceToken,$title, $body,$notificationId,$type,$userName=null)
    {
        $messaging = app('firebase.messaging');
        // Create a new Message instance with the notification details
        $message = CloudMessage::withTarget('token', $deviceToken)
            ->withNotification(Notification::create($title, $body))
            ->withData(['notification_id'=> $notificationId,'type'=>$type,'user_name'=>$userName])
            ->withAndroidConfig(AndroidConfig::fromArray(['ttl' => '3600s']))
            ->withNotification(FcmNotification::create($title, $body)); // Use withNotification() for Android-specific settings
        return $message;
    }

    public function sendUserPushNotification($deviceToken, $title, $body)
    {
        $messaging = app('firebase.messaging');
        // Create a new Message instance with the notification details
        $message = CloudMessage::withTarget('token', $deviceToken)
            ->withNotification(Notification::create($title, $body))
            ->withAndroidConfig(AndroidConfig::fromArray(['ttl' => '3600s']))
            ->withNotification(FcmNotification::create($title, $body)); // Use withNotification() for Android-specific settings
        $messaging->send($message);
    }
}
