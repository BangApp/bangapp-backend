<?php

namespace App\Helpers;

use App\UserDevice;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Log;

class DeviceHelper
{
    public static function saveDeviceInfo($deviceData)
    {
        try {
            $user = JWTAuth::user();

            if (!$user) {
                return [
                    'status' => 'error',
                    'message' => 'User not authenticated.',
                ];
            }

            $deviceData['user_id'] = $user->id;

            $existingDevice = UserDevice::where('unique_id', $deviceData['unique_id'])
                ->where('user_id', $deviceData['user_id'])
                ->first();

            if ($existingDevice) {
                $existingDevice->update([
                    'last_logged_in_at' => $deviceData['last_logged_in_at'],
                    'device_type' => $deviceData['device_type'],
                    'device_token' => $deviceData['device_token'],
                    'device_model' => $deviceData['device_model'],
                    'os_version' => $deviceData['os_version'],
                ]);

                return [
                    'status' => 'success',
                    'message' => 'Device updated successfully.',
                ];
            } else {
                UserDevice::create($deviceData);

                return [
                    'status' => 'success',
                    'message' => 'Device saved successfully.',
                ];
            }
        } catch (\Exception $e) {
            Log::error('Error saving device info: ' . $e->getMessage(), [
                'deviceData' => $deviceData,
                'user' => $user ?? null,
            ]);

            return [
                'status' => 'error',
                'message' => 'An error occurred while saving device info.',
                'error' => $e->getMessage(), // Optional: Include error details for debugging
            ];
        }
    }
}
