<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ResetPasswordController extends Controller
{
    public function showResetForm($token)
    {
        $user = User::where('reset_password_token', $token)->first();

        return view('change_password')->with([
            'token' => $token,
            'imageUrl' => $user->user_image_url ,
            'email' => $user->email,
        ]);
    }

    public function reset(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        if ($user && $user->reset_password_token === $request->token) {
            $user->password = Hash::make($request->password);
            $user->reset_password_token = null;
            $user->save();
            return redirect('https://bangapp.pro')->with('success', 'Your password has been reset successfully. Please log in with your new password.');
        } else {
            return back()->withInput()->with('error', 'Invalid token or email address.');
        }
    }
}
