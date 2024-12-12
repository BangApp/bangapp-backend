<?php

namespace App\Http\Controllers;

use App\User;
use App\friends;
use App\FriendRequest;
use Illuminate\Http\Request;

class UserController extends Controller
{
    private $userTrie;

    public function __construct()
    {
        $this->userTrie = [];
        $users = User::all();

        foreach ($users as $user) {
            $names = explode(' ', strtolower($user->name));
            foreach ($names as $name) {
                $this->addToUserTrie($name, $user->id);
            }
        }
    }

    private function addToUserTrie(string $value, int $id)
    {
        $currentTrie = &$this->userTrie;

        for ($i = 0; $i < strlen($value); ++$i) {
            $char = $value[$i];
            if (!isset($currentTrie[$char])) {
                $currentTrie[$char] = [];
            }
            $currentTrie = &$currentTrie[$char];
        }

        $currentTrie['__id'] = $id;
    }

    private function searchFromUserTrie(string $keyword)
    {
        $keyword = strtolower($keyword); // Convert the keyword to lowercase
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        $uniqueUserIds = [];
        $len = strlen($keyword);
        
        for ($i = 1; $i <= $len; $i++) {
            $substr = substr($keyword, 0, $i);
            $users = $this->retrieveUsersFromSubstring($substr);
    
            // Log the substrings and user names for debugging
            \Log::info("Searching for substring: $substr");
    
            foreach ($users as $user) {
                \Log::info("User name: " . $user['name']);
                $id = $user['id'];
                if (!in_array($id, $uniqueUserIds)) {
                    $uniqueUserIds[] = $id;
                }
            }
        }
    
        $results = [];
        foreach ($uniqueUserIds as $id) {
            $user = User::find($id);
            if ($user) {
                $results[] = [
                    'id' => $user->id,
                    'name' => $user->name,
                    'profileUrl' => $appUrl.'storage/app/'.$user->image,
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
    
        return $results;
    }
    

    private function retrieveUsersFromSubstring(string $substr)
    {
        $results = [];
        $userIds = [];
    
        // Get users based on the Trie-like structure for the given substring
        $this->collectUserIds($this->userTrie, $userIds, $substr);
    
        // Filter users to ensure that the substr matches the beginning of their name
        foreach ($userIds as $id) {
            $user = User::find($id);
            if ($user && strpos(strtolower($user->name), strtolower($substr)) === 0) {
                $results[] = [
                    'id' => $user->id,
                    'name' => $user->name,
                ];
            }
        }
    
        return $results;
    }

    private function collectUserIds(array $trieNode, array &$userIds, string $substr = '')
    {
        if (isset($trieNode['__id'])) {
            $userIds[] = $trieNode['__id'];
        }

        unset($trieNode['__id']);

        foreach ($trieNode as $key => $value) {
            if (empty($substr) || $substr[0] === $key) {
                $this->collectUserIds($value, $userIds, substr($substr, 1));
            }
        }
    }

    public function search(Request $request)
    {
        $keyword = $request->input('keyword');
        $results = [];
    
        if ($keyword) {
            // Fetch all users sorted by name
            $users = User::orderBy('name')->get();
            
            // Use binary search to find the user by keyword
            $user = $this->binarySearch($users, $keyword);
            // If the user is found, prepare the response data
            if ($user) {
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

    function binarySearch($users, $keyword) {
        $low = 0;
        $high = count($users) - 1;
    
        while ($low <= $high) {
            $mid = intdiv($low + $high, 2);  // Find the middle index
    
            // Compare the middle user's name with the keyword
            if (strtolower($users[$mid]->name) === strtolower($keyword)) {
                return $users[$mid];  // Return the user if found
            }
    
            // If the keyword is lexicographically smaller, search the left half
            if (strtolower($users[$mid]->name) > strtolower($keyword)) {
                $high = $mid - 1;
            } else {
                // Otherwise, search the right half
                $low = $mid + 1;
            }
        }
    
        // Return null if the keyword is not found
        return null;
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

    // public function addFollowersToHobby(Request $request)
    // {
    //     $hobbies = $request->hobbies;
    //     $userHobbies = UserHobby::('hobby_id', '')

    // }

    public function usersManage()
    {
        $users = User::all();
        return view('user.user_manage', compact('users'));
    }
}
