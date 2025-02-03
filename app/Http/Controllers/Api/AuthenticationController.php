<?php

namespace App\Http\Controllers\Api;

use App\Device;
use App\Helpers\DeviceHelper;
use App\Http\Controllers\Controller;
use App\User;
use App\Post;
use App\UserDevice;
use App\UserHobby;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules\Unique;
use App\Hobby;

class AuthenticationController extends Controller
{
    function baseUrl()
    {
        return env('APP_URL');
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'regex:/^[A-Za-z]+(?:\s[A-Za-z]+)*$/', 'max:20', 'min:1', 'unique:users,name'],
            'email' => [
                'required',
                function ($attribute, $value, $fail) {
                    $exists = \App\User::where(function ($query) use ($value) {
                        $query->where('email', $value);
                    })->exists();
                    if ($exists) {
                        $fail('The ' . $attribute . ' has already been taken.');
                    }
                }
            ],
            'password' => ['required', 'string', 'min:6', 'max:30'],
            'phone_number' => [
                'required',
                function ($attribute, $value, $fail) {
                    $exists = \App\User::where(function ($query) use ($value) {
                        $query->where('phone_number', $value);
                    })->exists();
                    if ($exists) {
                        $fail('The ' . $attribute . ' has already been taken.');
                    }
                }
            ],
        ]);
        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        } else {
            $validatedData = $validator->validated();
            $validatedData['password'] = bcrypt($request->password);
            $validatedData['role_id'] = 3;
            $user = User::create($validatedData);


            $hobbies = Hobby::all();
            if ($hobbies->isNotEmpty()) {
                $randomHobbyIds = $hobbies->random(min(5, $hobbies->count()))->pluck('id');
                $user->hobbies()->attach($randomHobbyIds);
            }

            
            $token = JWTAuth::attempt(['email' => $request->email, 'password' => $request->password]);
            return response(['name' => $user->name, 'access_token' => $token, 'id' => $user->id, 'email' => $user->email, 'image' => env('APP_URL') . 'storage/' . $user->image]);
        }
    }

    public function registerGoogleUser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_email' => 'required|email|unique:users,email',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 400);
        }
        $user = User::create([
            'email' => $request->user_email,
            'phone_number' => $request->phone_number,
            'country_code' => $request->country_code,
            'image' => $request->user_picture,
            'name' => $request->user_name,
            'role_id' => 3,
            'password' => bcrypt($request->uid)
        ]);

        if ($user->wasRecentlyCreated) {
            $token = JWTAuth::attempt(['email' => $user->email, 'password' => $request->uid]);
            return response(['name' => $user->name, 'access_token' => $token, 'id' => $user->id, 'email' => $user->email, 'image' => $user->image]);
        } else {
            return response()->json(['message' => 'Failed to create user'], 400);
        }
    }


    // public function login(Request $request)
    // {
    //    $validator = Validator::make($request->all(), [
    //         'email' => 'required',
    //         'password' => 'required',
    //     ]);
    //     if ($validator->fails()) {
    //         return response()->json(['error' => 'email or password is missing'], 401);
    //     }
    //     $credentials = $request->only('email', 'password');
    //     $input = $request->input('email');
    //     if (filter_var($input, FILTER_VALIDATE_EMAIL)) {
    //         $user = User::where('email', $input)->first();
    //     } else {
    //         $user = User::where('phone_number', $input)->first(); // Adjust based on your database structure
    //     }
    //     if (! $token = JWTAuth::attempt(['email' => $user->email, 'password' => $credentials['password']])) {
    //         return response()->json(['error' => 'invalid_credentials'], 401);
    //     }
    //     $user = JWTAuth::user();
    //     return response()->json([
    //         'token' => $token,
    //         'user_id' => $user->id,
    //         'user_image' => env('APP_URL').'storage/'.$user->image,
    //         'name' => $user->name,
    //         'role' => $user->role ? $user->role->name : 'user',
    //         'postCount' => $user->postCount,
    //         'friendsCount' => $user->friendsCount,
    //         'bio' => $user->bio,
    //         'isFriend' =>false,
    //         'isFriendRequest' => false,
    //         'occupation'=>$user->occupation,
    //         'isHavingFiles' => $user->isHavingFiles,
    //         'isHavingBangUpdate' => $user->isHavingBangUpdate,
    //         'phone_number' => $user->phone_number,
    //     ]);
    // }


    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => 'provide all the data'], 401);
        }
        $credentials = $request->only('email', 'password');

        if (!$token = JWTAuth::attempt($credentials)) {
            return response()->json(['error' => 'invalid_credentials'], 401);
        }
        // Get the authenticated user from the JWT token
        $user = JWTAuth::user();
        // Return the token and user ID in the response

        if( $request->header('Unique-ID')){
            $deviceData = [
                'user_id' => $user->id,
                'device_type' => $request->header('Device-Type'), // e.g., Android, iOS
                'device_token' => $request->header('Device-Token'),
                'device_model' => $request->header('Device-Model'),
                'unique_id' => $request->header('Unique-ID'),
                'os_version' => $request->header('OS-Version'),
                'last_logged_in_at' => now()->toDateTimeString(), // Set the current timestamp
            ];

            Log::info(['Informational message.' => $deviceData]);

            $savedDevice = DeviceHelper::saveDeviceInfo($deviceData);
        }



        return response()->json([
            'token' => $token,
            'user_id' => $user->id,
            'user_image' => env('APP_URL') . 'storage/' . $user->image,
            'name' => $user->name,
            'role' => $user->role ? $user->role->name : 'user',
            'phone_number' => $user->phone_number,
            'post_count' => $user->postCount,
            'bio' => $user->bio,
            'friends_count' => $user->friendsCount,
            'is_having_files' => $user->isHavingFiles,
            'is_having_bang_update' => $user->isHavingBangUpdate,
            'occupation' => $user->occupation,
            'country_code' => $user->isHavingBangUpdate,
        ]);
    }

    public function user(User $user)
    {
        $user = $user->only([
            'id',
            'name',
            'email',
            'image',
            'followerCount',
            'followingCount',
            'followingMe',
            'followed',
            'created_at',
        ]);

        return response(['data' => $user, 'message' => 'success'], 200);
    }

    function getCurrentUser(Request $request)
    {
        return $request->user();
    }

}
