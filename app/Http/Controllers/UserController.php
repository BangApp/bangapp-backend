<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

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

            // Add unique user IDs to the result set
            foreach ($users as $user) {
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
                'followCount' => $user->followers->count(),
                'followingCount' => $user->following->count(),
                'postCount' => $user->posts->count()

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

        foreach ($userIds as $id) {
            $user = User::find($id);
            if ($user) {
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
            $results = $this->searchFromUserTrie($keyword);
        }

        return response()->json($results);
    }

    public function getMyInfo(Request $request)
    {
        $user_id = $request->input('user_id');
        $viewer_id = $request->input('viewer_id');
        // Check if the user_id is provided in the request
        if (!$user_id) {
            return response()->json(['error' => 'User ID is missing in the request'], 400);
        }
        // Find the user based on the user_id
        $user = User::find($user_id);

        if ($user->hasUserPaid($user_id,$viewer_id)) {
                $user->public = 0;
            }
        if ($user->hasActiveSubscription($viewer_id)) {

            Log::info('user ana subscription');
            $user->subscribe = 0;

        }

            // Check if there's an active subscription for the current month
    $activeSubscription = Subscription::where('subscriber_id', $viewer_id)
                                      ->where('user_id', $user_id)
                                      ->whereYear('created_at', '=', date('Y'))
                                      ->whereMonth('created_at', '=', date('m'))
                                      ->exists();

    // If the viewer has an active subscription, set the subscribe attribute to zero
    if ($activeSubscription) {
                    Log::info('user ana subscription nyengine');

        $user->subscribe = 0;
    }

        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }

        // Return user information as a JSON response
        return response()->json($user, 200);
    }

    // public function addFollowersToHobby(Request $request)
    // { 
    //     $hobbies = $request->hobbies;
    //     $userHobbies = UserHobby::('hobby_id', '')

    // }
}
