<?php

namespace App\Http\Controllers;

use App\User;
use App\friends;
use App\FriendRequest;
use Illuminate\Http\Request;

class UserController extends Controller
{

    public function search(Request $request)
    {
        $keyword = $request->input('keyword');
        $results = [];
    
        if ($keyword) {
            // Fetch all users sorted by name
            $users = User::orderBy('name')->get();
    
            // Use linear search to find users whose names match the keyword
            $matchedUsers = $this->linearSearch($users, $keyword);
    
            // Prepare results
            foreach ($matchedUsers as $user) {
                $results[] = [
                    'id' => $user->id,
                    'name' => $user->name,
                    'profileUrl' => 'https://bangapp.pro/BangAppBackend/storage/app/'.$user->image,
                    'bio' => $user->body,
                    'postCount' => $user->posts->count(),
                    'occupation' => $user->occupation,
                    'friendsCount' => $user->friendsCount,
                    'isHavingFiles' => $user->isHavingFiles,
                    'isHavingBangUpdate' => $user->isHavingBangUpdate,
                    'subscriptionCount' => $user->subscriptionCount,
                ];
            }
        }
    
        return response()->json($results);
    }
    
    private function linearSearch($users, $keyword)
    {
        $matchedUsers = [];
        $normalizedKeyword = strtolower($keyword);
    
        foreach ($users as $user) {
            $userName = strtolower($user->name);
    
            if (strpos($userName, $normalizedKeyword) !== false) {
                $matchedUsers[] = $user;
            }
        }

        usort($matchedUsers, function($a, $b) use ($normalizedKeyword) {
            $aName = strtolower($a->name);
            $bName = strtolower($b->name);
    
            if (strpos($aName, $normalizedKeyword) === 0 && strpos($bName, $normalizedKeyword) !== 0) {
                return -1; 
            }
            if (strpos($bName, $normalizedKeyword) === 0 && strpos($aName, $normalizedKeyword) !== 0) {
                return 1; 
            }
            return 0;
        });
    
        return $matchedUsers;
    }
    

    public function getMyInfo(Request $request)
    {
        $user_id = $request->input('user_id');
        $viewer_id = $request->input('viewer_id');
        if (!$user_id) {
            return response()->json(['error' => 'User ID is missing in the request'], 400);
        }
        $user = User::find($user_id);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        if ($user->hasUserPaid($user_id,$viewer_id)) {
                $user->public = 0;
        }
        if ($user->hasActiveSubscription($viewer_id)) {
            $user->subscribe = 0;
        }
        $user->subscriptionDays = $user->subscriptionDaysRemaining($viewer_id);
        $isFriend = friends::where(function ($query) use ($user_id, $viewer_id) {
            $query->where('user_id', $user_id)
                ->where('friend_id', $viewer_id)
                ->orWhere(function ($query) use ($user_id, $viewer_id) {
                    $query->where('user_id', $viewer_id)
                            ->where('friend_id', $user_id);
                });
        })
        ->exists();
        $isFriendRequest = FriendRequest::where('sender_id', $viewer_id)
                                ->where('receiver_id', $user_id)
                                ->where('status', 'pending')
                                ->exists();
        $user->isFriend = $isFriend;
        $user->isFriendRequest = $isFriendRequest;
        return response()->json($user, 200);
    }

    public function usersManage()
    {
        $users = User::all();
        return view('user.user_manage', compact('users'));
    }
}
