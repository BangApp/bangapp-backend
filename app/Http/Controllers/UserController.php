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
    
        // Iterate through each user and check for a match
        foreach ($users as $user) {
            $userName = strtolower($user->name);
    
            // If the name contains the keyword (even partially), add it to results
            if (strpos($userName, $normalizedKeyword) !== false) {
                $matchedUsers[] = $user;
            }
        }
    
        // Sort matched users: exact matches will be placed first
        usort($matchedUsers, function($a, $b) use ($normalizedKeyword) {
            $aName = strtolower($a->name);
            $bName = strtolower($b->name);
    
            // Prioritize exact matches
            if (strpos($aName, $normalizedKeyword) === 0 && strpos($bName, $normalizedKeyword) !== 0) {
                return -1; // $a should come before $b
            }
            if (strpos($bName, $normalizedKeyword) === 0 && strpos($aName, $normalizedKeyword) !== 0) {
                return 1; // $b should come before $a
            }
            return 0; // Keep order the same if both are exact or neither are exact
        });
    
        return $matchedUsers;
    }
    
    function binarySearch($users, $keyword) {
        $low = 0;
        $high = count($users) - 1;
        $matchedUsers = [];
    
        // Normalize the keyword to lowercase for case-insensitive comparison
        $normalizedKeyword = strtolower($keyword);
    
        // Ensure the keyword has at least 2 characters for meaningful search
        if (strlen($normalizedKeyword) < 2) {
            return $matchedUsers;  // Return an empty array if the keyword is too short
        }
    
        while ($low <= $high) {
            $mid = intdiv($low + $high, 2);  // Find the middle index
    
            // Normalize the user's name for comparison
            $userName = strtolower($users[$mid]->name);
    
            // If the middle user's name contains the keyword, add to matched users
            if (strpos($userName, $normalizedKeyword) !== false) {
                $matchedUsers[] = $users[$mid];
            }
    
            // Adjust the search bounds based on lexicographical comparison
            if ($userName > $normalizedKeyword) {
                $high = $mid - 1;  // Search the left half
            } else {
                $low = $mid + 1;  // Search the right half
            }
        }
    
        // Return the array of users that match the keyword
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
