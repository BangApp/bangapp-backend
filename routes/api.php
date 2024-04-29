<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Image;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Post;
use App\Like;
use App\Challenge;
use App\User;
use FFMpeg\FFMpeg;
use getID3\getID3;
use FFMpeg\Coordinate\Dimension;
use App\BangUpdate;
use App\bangInspiration;
use App\Comment;
use App\azampay;
use App\CommentReplies;
use App\DeletedPost;
use App\Hobby;
use App\Follower;
use App\friends;
use App\PostView;
use App\ReportedPost;
use App\BangUpdateView;
use App\BattleComment;
use App\bangUpdateComment;
use App\UserHobby;
use App\BangBattle;
use App\Subscription;
use App\Notification;
use App\BattleCommentReplies;
use App\UpdateCommentReplies;
use App\BattleLike;
use App\BlockedUser;
use App\FewerPost;
use Illuminate\Validation\Rule;
use App\Http\Controllers\PushNotificationService;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\ChatController;
use Illuminate\Support\Facades\Mail;
use App\Mail\ResetPasswordMail;
use Illuminate\Support\Facades\Log;


global $appUrl;
$appUrl = "https://bangapp.pro/BangAppBackend/";


Route::post('imageAddServer', function (Request $request) {
    $image = new Post;
    $image->body = $request->body;
    $image->user_id = $request->user_id;
    $image->pinned = $request->pinned;
    if ($request->type) {
        $image->type = $request->type;
        if ($request->type == 'video') {
            if ($request->file('image')) {
                $path = $request->file('image')->store('images');
                $image->image = $path;
                if ($path) {
                    $image->save();
                }
            }
        }
    }

    return response()->json(['url' => asset($image->image)], 201);
});



Route::post('/videoAddServer', function (Request $request) {
    if($request->location == "post")
    {
        $image = new Post;
        $image->body = $request->body;
        $image->user_id = $request->user_id;
        $image->pinned = $request->pinned;
        $image->price = $request->price;
        $image->image = $request->path;
        $image->type = $request->type;
        $image->thumbnail_url = $request->thumbnail_url;
        $image->aspect_ratio = $request->aspect_ratio;
        $image->cache_url = $request->cache_url;
        if ($request->path) {
            $image->save();
        }
    }
    else{
        $bangUpdate = new BangUpdate();
        $bangUpdate->caption = $request->body;
        $bangUpdate->user_id = $request->user_id;
        $bangUpdate->filename = $request->path;
        $bangUpdate->type = 'video';
        $bangUpdate->cache_url = $request->cache_url;
        $bangUpdate->aspect_ratio = $request->aspect_ratio;
        $bangUpdate->thumbnail_url = $request->thumbnail_url;
        $bangUpdate->save();
    }
  
    return response()->json(['url' => $request->path], 201);
});

Route::post('updateVideoAddServer', function (Request $request){
    $bangUpdate = new BangUpdate();
    $bangUpdate->caption = $request->caption;
    $bangUpdate->user_id = $request->user_id;
    $bangUpdate->filename = $request->filename;
    $bangUpdate->type = 'video';
    $bangUpdate->cache_url = $request->cache_url;
    $bangUpdate->aspect_ratio = $request->aspect_ratio;
    $bangUpdate->thumbnail_url = $request->thumbnail_url;
    $bangUpdate->save();

});

Route::any('/azampay', function (Request $request) {
    $data = $request->all();

    $additionalProperties = $data['additionalProperties'] ?? [];
    $postId = $additionalProperties['postId'] ?? null;
    $userId = $additionalProperties['userId'] ?? null;
    $type = $additionalProperties['type'] ?? null;
    $azampay = Azampay::create([
        'response' => json_encode($data),
        'message' => $data['message'] ?? null,
        'user' => $data['user'] ?? null,
        'password' => $data['password'] ?? null,
        'clientId' => $data['clientId'] ?? null,
        'transactionstatus' => $data['transactionstatus'] ?? null,
        'operator' => $data['operator'] ?? null,
        'reference' => $data['reference'] ?? null,
        'externalreference' => $data['externalreference'] ?? null,
        'utilityref' => $data['utilityref'] ?? null,
        'amount' => $data['amount'] ?? null,
        'transid' => $data['transid'] ?? null,
        'msisdn' => $data['msisdn'] ?? null,
        'mnoreference' => $data['mnoreference'] ?? null,
        'submerchantAcc' => $data['submerchantAcc'] ?? null,
        'user_id' => $userId,
        'post_id' => $postId,
        'type' => $type,
    ]);

    return response()->json(['id' => $azampay->id], 201);
});


Route::any('/saveDummyAzampPay', function (Request $request) {
    $data = $request->all();

    $transactionId = $data['transactionId'] ?? null;
    $type= $data['type'] ?? null;

    if (!$transactionId) {
        return response()->json(['error' => 'Transaction ID not provided'], 400);
    }

    $previousPayment = Azampay::latest()->first();

    if (!$previousPayment) {
        return response()->json(['error' => 'No previous payment found with the provided transaction ID'], 404);
    }

    $dummyPayment = Azampay::create([
        'response' => $previousPayment->response,
        'message' => $previousPayment->message,
        'user' => $previousPayment->user,
        'password' => $previousPayment->password,
        'clientId' => $previousPayment->clientId,
        'transactionstatus' => $previousPayment->transactionstatus,
        'operator' => $previousPayment->operator,
        'reference' => $previousPayment->reference,
        'externalreference' => $previousPayment->externalreference,
        'utilityref' => $previousPayment->utilityref,
        'amount' => $previousPayment->amount,
        'transid' => $transactionId,
        'msisdn' => $previousPayment->msisdn,
        'mnoreference' => $previousPayment->mnoreference,
        'submerchantAcc' => $previousPayment->submerchantAcc,
        'user_id' => $previousPayment->user_id,
        'post_id' => $previousPayment->post_id,
        'type'=> $type,
    ]);

    return response()->json(['id' => $dummyPayment->id], 200);
});



Route::get('/getPaymentStatus/{transactionId}', function ($transactionId) {
    $payment = Azampay::where('transid', $transactionId)->where('transactionstatus', 'success')->first();
    if ($payment) {
        return response()->json(['status' => true, 'post_id' => $payment->post_id], 200);
    } else {
        return response()->json(['status' => false], 200);
    }
});



Route::middleware('auth:api')->group(function () {

    Route::get('/users/search', 'App\Http\Controllers\UserController@search');
    Route::get('/users/getMyInfo', 'App\Http\Controllers\UserController@getMyInfo');


    Route::get('/bang-updatesnew', function (\Illuminate\Http\Request $request) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        $page = $request->query('_page', 1);
        $limit = $request->query('_limit', 4);

        $bangUpdates = BangUpdate::all();

        $formattedUpdates = $bangUpdates->getCollection()->map(function ($update) use ($appUrl) {
            $update->filename = $appUrl . 'storage/app/bangUpdates/' . $update->filename;
            return $update;
        });

        $paginatedResponse = [
            'data' => $formattedUpdates,
            'meta' => [
                'currentPage' => $bangUpdates->currentPage(),
                'perPage' => $bangUpdates->perPage(),
                'totalPages' => $bangUpdates->lastPage(),
                'totalItems' => $bangUpdates->total(),
            ],
        ];

        return response()->json($paginatedResponse);
    });



    Route::get('/bang-updates/{userId}/{per_page}/{page}', function ($userId,$per_page,$page) {

        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Get the bang updates and include like information for the given user
        $bangUpdates = BangUpdate::unseenPosts($userId)->orderBy('created_at', 'desc')
            ->with([
                'bang_update_likes' => function ($query) use ($userId) {
                    $query->select('post_id', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id'); // Filter likes by user ID
                },
                'bang_update_like_count' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id');
                },
                'bang_update_comments' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as comment_count'))
                        ->groupBy('post_id');
                },
            ])->paginate($per_page, ['*'], 'page', $page);

        // Format the updates and add the isLiked variable
        $formattedUpdates = $bangUpdates->map(function ($update) use ($appUrl, $userId) {
            if($update->type=="image"){
                $update->filename = $appUrl . 'storage/app/bangUpdates/' . $update->filename;

            }

            // Check if the user has liked the post
            $update->isLiked = DB::table('bang_update_likes')
                ->where('user_id', $userId)
                ->where('post_id', $update->id)
                ->exists();

            return $update;
        });

        return response()->json($formattedUpdates);
    });

    Route::get('/user-bang-updates/', function (Request $request) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Get the _page and _limit parameters from the request query
        $pageNumber = $request->query('_page', 1);
        $numberOfPostsPerRequest = $request->query('_limit', 10);

        // Get the user's ID if available (you can adjust how you get the user's ID based on your authentication system)
        $userId = $request->input('user_id');
        // Get the bang updates and include like information for the given user
        $bangUpdates = BangUpdate::where('user_id', $userId)->orderBy('created_at', 'desc')
            ->with([
                'bang_update_likes' => function ($query) use ($userId) {
                    $query->select('post_id')->where('user_id', $userId); // Filter likes by user ID
                },
                'bang_update_like_count' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id');
                },
                'bang_update_comments' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as comment_count'))
                        ->groupBy('post_id');
                },
            ])->paginate($numberOfPostsPerRequest, ['*'], '_page', $pageNumber);

        // Format the updates and add the isLiked variable
        $formattedUpdates = $bangUpdates->map(function ($update) use ($appUrl, $userId) {

            if ($update->type == "image") {
                $update->filename = $appUrl . 'storage/app/bangUpdates/' . $update->filename;
            }

            $update->isLiked = $update->bang_update_likes->isNotEmpty(); // Check if there are likes


            return $update;
        });

        return response()->json($formattedUpdates);
    });

    Route::get('/updateIsRead/{notificationId}', function ($notificationId) {
        $update = Notification::updateIsRead($notificationId);
        if ($update) {
            return response()->json(['status' => $update]);
        }
    });


    Route::get('/updateIsSeen/{postId}/{userId}', function ($postId, $userId) {
        $existingRecord = PostView::where('user_id', $userId)
            ->where('post_id', $postId)
            ->exists();

        if (!$existingRecord) {
            PostView::create([
                'user_id' => $userId,
                'post_id' => $postId,
            ]);
            return response()->json(['status' => true, 'message' => 'Record created successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'Post has already been seen']);
        }
    });

    Route::get('/updateBangUpdateIsSeen/{bangUpdateId}/{userId}', function ($bangUpdateId, $userId) {
        $existingRecord = BangUpdateView::where('user_id', $userId)
            ->where('bang_update_id', $bangUpdateId)
            ->exists();
        if (!$existingRecord) {
            BangUpdateView::create([
                'user_id' => $userId,
                'bang_update_id' => $bangUpdateId,
            ]);
            return response()->json(['status' => true, 'message' => 'Record created successfully']);
        } else {
            return response()->json(['status' => false, 'message' => 'Bang update has already been seen']);
        }
    });


    Route::post('imageadd', function (Request $request) {
        $image = new Post;
        $image->body = $request->body;
        $image->user_id = $request->user_id;
        $image->aspect_ratio = $request->aspect_ratio;
        if ($request->pinned) {
            $image->pinned = $request->pinned;
            $image->price = $request->price;
        }
        if ($request->type) {
            $image->type = $request->type;
            if ($request->file('image')) {
                $path = $request->file('image')->store('images');
                $image->image = $path;
                if ($path) {
                    $image->save();
                }
            }
        }
        return response()->json(['url' => asset($image->image)], 201);
    });



    Route::post('imagechallengadd', function (Request $request) {
        $image = new Post;
        $image->body = $request->body;
        $image->user_id = $request->user_id;
        if ($request->type) {
            $image->type = $request->type;
        }
        if ($request->hasFile('image') && $request->hasFile('image2')) {
            $path = $request->file('image')->store('images');
            $path2 = $request->file('image2')->store('images');
            $image->image = $path;
            $image->challenge_img = $path2;
        }
        $image->save();
        return response()->json(['url' => asset($image->url)], 201);
    });

    Route::post('/addChallenge', function (Request $request) {
        $image = new Challenge;
        $image->body = $request->body;
        $image->user_id = $request->user_id;
        $image->post_id = $request->post_id;
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('challenges');
            $image->challenge_img = $path;
        }
        $image->save();
        return response()->json(['challengeId' => $image->id], 200);
    });


    Route::post('/addBangUpdate', function (Request $request) {
        // Get the uploaded file
        $file = $request->file('image');
        // Generate a unique filename
        $filename = uniqid() . '.' . $file->getClientOriginalExtension();
        // Store the file locally in the storage/app/public directory
        $file->storeAs('bangUpdates', $filename);
        $bangUpdate = new BangUpdate();
        $bangUpdate->caption = $request->body;
        $bangUpdate->user_id = $request->user_id;
        $bangUpdate->filename = $filename;
        $bangUpdate->type = $request->type;
        $bangUpdate->save();
        // Redirect back or show a success message
        return response()->json(['BangUpdateID' => $bangUpdate->id], 200);
    });



    Route::get('/getChallenge/{challengeId}', function ($challengeId) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Retrieve the Challenge model instance by its ID
        $challenge = Challenge::where('id', $challengeId)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            }
        ])->first();
        if (!$challenge) {
            return response(['message' => 'Challenge not found'], 404);
        }
        // Perform the necessary transformations
        $challenge->challenge_img = $challenge->challenge_img ? $appUrl . 'storage/app/' . $challenge->challenge_img : null;
        if ($challenge->type === 'image' && isset($challenge->challenge_img)) {
            list($challenge->width, $challenge->height) = getimagesize($challenge->challenge_img);
        }
        // // Retrieve the like count (replace 'likes_count' with your actual column name)
        // $challenge->likes_count = $challenge->likes()->count();
        return response(['data' => $challenge, 'message' => 'success'], 200);
    });

    Route::get('/userr', function () {
        $user = auth()->user();
        return response()->json($user);
    })->middleware('jwt.auth');

    Route::get('/comments', function (Post $post) {
        $comments = $post->comments()->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->paginate(10);
        return response(['data' => $comments, 'message' => 'success'], 200);
    });

    /**
     *
     * This route returns all the bang inspirations with their profile url, video url and thumbnail.
     * The urls are formatted with the app url and returned as a json response.
     *
     */
    Route::get('/get/bangInspirations', function () {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        $bangInspirations = bangInspiration::all();
        $formattedInspirations = $bangInspirations->map(function ($update) use ($appUrl) {
            $update->profile_url = $appUrl . 'storage/app/bangInspiration/' . $update->profile_url;
            $update->video_url = $appUrl . 'storage/app/bangInspiration/' . $update->video_url;
            $update->thumbnail = $appUrl . 'storage/app/bangInspiration/thumb/' . $update->thumbnail;
            return $update;
        });

        return response()->json($formattedInspirations);
    });
    Route::get('/get/bangInspirations/{videoId}', function ($videoId) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Retrieve the Video model instance by its ID
        $video = BangInspiration::where('id', $videoId)->first();
        if (!$video) {
            return response(['message' => 'Video not found'], 404);
        }

        // Perform the necessary transformations
        $video->video_url = $video->video_url ? $appUrl . 'storage/app/bangInspiration/' . $video->video_url : null;
        $video->thumbnail = $video->thumbnail ? $appUrl . 'storage/app/bangInspiration/thumb/' . $video->thumbnail : null;
        return response()->json($video);
    });

    Route::post('/editPost', function (Request $request) {
        $post = Post::find($request->id);
        $post->body = $request->caption;
        if ($post->save()) {
            return response(['message' => 'Post edited successfully'], 200);
        } else {
            return response(['error' => 'Something went Wrong'], 400);
        }
    });

   Route::get('/getPost', function (Request $request) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        $pageNumber = $request->query('_page', 1);
        $numberOfPostsPerRequest = $request->query('_limit', 10);

        $user_id = $request->input('user_id');
        //$userHobbies = UserHobby::where('user_id', $user_id)->pluck('hobby_id')->toArray();


        $posts = Post::unseenPosts($user_id)->latest()
            ->with([
                'likes' => function ($query) {
                    $query->select('post_id', 'like_type', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id', 'like_type');
                },
                'challenges' => function ($query) {
                    $query->select('*')->where('confirmed', 1);
                }
            ])->paginate($numberOfPostsPerRequest, ['*'], '_page', $pageNumber);


        $posts->getCollection()->transform(function ($post) use ($appUrl, $user_id) {
            $post->post_views_count = $post->pinned == 1 ?  $post->payedCount() : $post->postViews->count();
            // Update the 'pinned' attribute based on whether the user has paid or not
            if ($post->hasUserPaid($user_id,$post->id)) {
                $post->pinned = 0;
            }

            if ($post->type === 'image') {
                $post->image ? $post->image = $appUrl . 'storage/app/' . $post->image : $post->image = null;
                $post->challenge_img ? $post->challenge_img = $appUrl . 'storage/app/' . $post->challenge_img : $post->challenge_img = null;
                list($post->width, $post->height) =  [300, 300];
            }
            if ($post->type === 'video') {
                $post->image = $post->image;
                list($post->width, $post->height) = [300, 300];
            }

            foreach ($post->challenges as $challenge) {
                $challenge->challenge_img ? $challenge->challenge_img = $appUrl . 'storage/app/' . $challenge->challenge_img : $challenge->challenge_img = null;
            }
            if ($post->challenges->isNotEmpty()) {
                // Create a new Challenge object to add at the top of the challenges array
                $newChallenge = new Challenge([
                    'id' => $post->id, // replace with appropriate values
                    'post_id' => $post->id,
                    'user_id' => $post->user_id,
                    'challenge_img' => $post->image, // replace with appropriate values
                    'body' => $post->body, // replace with appropriate values
                    'type' => $post->type,
                    'confirmed' => 1,
                    'created_at' => $post->created_at,
                    'updated_at' => $post->updated_at,
                    // add other properties as needed
                ]);
                // Convert the challenges collection to an array, add the new challenge at the top, and reindex the array
                $challengesArray = $post->challenges->prepend($newChallenge)->values()->toArray();

                // Set the challenges property with the modified array
                $post->challenges = $challengesArray;
            }

            $post->isLikedA = false;
            $post->isLikedB = false;
            $post->isLiked = false;
            // Check if the user has liked the post and update isLikedA and isLikedB accordingly
            $likeType = Post::getLikeTypeForUser($user_id, $post->id);
            if ($likeType == "A") {
                $post->isLikedA = true;
                $post->isLiked = true;
            } elseif ($likeType == "B") {
                $post->isLikedB = true;
                //$post->isLiked = true;
            }

            // Retrieve the like counts for both A and B challenge images
            // $likeCount
            $likeCountA = 0;
            $likeCountB = 0;
            if ($post->likes->isNotEmpty()) {
                foreach ($post->likes as $like) {
                    if ($like->like_type === 'A') {
                        $likeCountA = $like->like_count;
                    } elseif ($like->like_type === 'B') {
                        $likeCountB = $like->like_count;
                    }
                }
            }
            $post->like_count_A = $likeCountA;
            $post->like_count_B = $likeCountB;

            return $post;
        });

        return response(['data' => $posts, 'message' => 'success'], 200);
    });


    

    Route::delete('/deletePost/{id}', function ($id) {
        // Find the post by ID
        $post = Post::findOrFail($id);
        // Delete associated post_views records
        $post->postViews()->delete();
        $post->comments()->delete();
        $post->likess()->delete();
        $deletedPostData = $post->toArray();
        unset($deletedPostData['id']);
        DeletedPost::create(['user_id' => $deletedPostData['user_id'], 'body' => $deletedPostData['user_id'], 'type' => $deletedPostData['type'], 'image' => $deletedPostData['image'], 'challenge_img' => $deletedPostData['challenge_img'], 'pinned' => $deletedPostData['pinned']]);
        // Move associated media files to the recycle bin in the storage folder
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        $deletedFolder = 'recycle_bin';
        $deletedPath = storage_path('app/' . $deletedFolder);
        if ($post->type == 'image') {
            if ($post->image) {
                $imagePath = Str::replaceFirst($appUrl . 'storage/app/', '', $post->image);

                $deletedImageName = basename($imagePath);
                $deletedImagePath = $deletedPath . '/' . $deletedImageName;
                File::move(storage_path('app/' . $imagePath), $deletedImagePath);
            }
            if ($post->challenge_img) {
                $challengeImagePath = Str::replaceFirst($appUrl . 'storage/app/', '', $post->challenge_img);
                $deletedChallengeImageName = basename($challengeImagePath);
                $deletedChallengeImagePath = $deletedPath . '/' . $deletedChallengeImageName;
                File::move(storage_path('app/' . $challengeImagePath), $deletedChallengeImagePath);
            }
        } else {
            // Inside your function or closure
            Log::info('naingia kwenye video');
            $url = $post->image;
            $parts = explode('/', $url);
            $uid = $parts[count($parts) - 2]; // Get the second-to-last element
            deleteVideoApi($uid);
            Log::info('natoke kwenye video');
        }
        $post->delete();
        return response(['message' => 'Post deleted successfully'], 200);
    });

    Route::post('/likePost', function (Request $request) {
        $postId = $request->input('post_id');
        $userId = $request->input('user_id');
        $likeType = $request->input('like_type'); // Add this line to get the like_type ('A' or 'B') from the request
        $post = Post::find($postId);
        $user = User::find($userId);
        if (!$post || !$user) {
            return response()->json(['message' => 'Post or user not found'], 404);
        }
        $oppositeLikeType = ($likeType === 'A') ? 'B' : 'A';

        // Check if the user has already liked the post with the given like_type
        $isLiked = Like::where('user_id', $user->id)->where('post_id', $postId)->exists();
        $isLikedChallenge = Like::where('user_id', $user->id)->where('post_id', $postId)->where('like_type', $oppositeLikeType)->exists();
        $challengeLike = Like::where('user_id', $user->id)->where('post_id', $postId)->where('like_type', $likeType)->exists();

        if ($isLiked && $challengeLike) {
            Like::where('user_id', $user->id)->where('post_id', $postId)->delete();
            $message = 'Post unliked successfully';
        } else if (isset($isLiked) && isset($isLikedChallenge)) {

            Like::where('user_id', $user->id)->where('post_id', $postId)->where('like_type', $oppositeLikeType)->delete();

            Like::create([
                'user_id' => $userId,
                'like_type' => $likeType,
                'post_id' => $postId
            ]);
            if ($post->user->id <> $userId) {
                $pushNotificationService = new PushNotificationService();
                $pushNotificationService->sendPushNotification($post->user->device_token, $user->name, likeMessage(), $postId, 'like');
                saveNotification($userId, likeMessage(), 'like', $post->user->id, $postId);
            }

            $message = 'Post liked successfully';
        } else {
            Like::where('user_id', $user->id)->where('post_id', $postId)->where('like_type', $oppositeLikeType)->delete();

            Like::create([
                'user_id' => $userId,
                'like_type' => $likeType,
                'post_id' => $postId
            ]);
            if ($post->user->id <> $userId) {
                $pushNotificationService = new PushNotificationService();
                saveNotification($userId, likeMessage(), 'like', $post->user->id, $postId);
                $message = 'Post liked successfully';
            }
        }
        // Get the updated like count for the specific like_type
        $likeCount = $post->likes()->where('like_type', $likeType)->count();

        return response()->json(['message' => $message, 'likeCount' => $likeCount]);
    });

    Route::post('/likeBangBattle', function (Request $request) {
        $battleId = $request->input('battle_id');
        $userId = $request->input('user_id');
        $likeType = $request->input('like_type'); // Add this line to get the like_type ('A' or 'B') from the request
        $battle = BangBattle::find($battleId);
        $user = User::find($userId);
        if (!$battle || !$user) {
            return response()->json(['message' => 'battle or user not found'], 404);
        }
        $oppositeLikeType = ($likeType === 'A') ? 'B' : 'A';

        // Check if the user has already liked the battle with the given like_type
        $isLiked = BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->exists();
        $isLikedChallenge = BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->where('like_type', $oppositeLikeType)->exists();
        $challengeLike = BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->where('like_type', $likeType)->exists();

        if ($isLiked && $challengeLike) {
            BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->delete();
            $message = 'battle unliked successfully';
        } else if (isset($isLiked) && isset($isLikedChallenge)) {
            // User hasn't liked the battle yet, so like it
            // // Remove the opposite like if it exists

            BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->where('like_type', $oppositeLikeType)->delete();

            BattleLike::create([
                'user_id' => $userId,
                'like_type' => $likeType,
                'battle_id' => $battleId
            ]);
            $message = 'battle liked successfully';
        } else {
            BattleLike::where('user_id', $user->id)->where('battle_id', $battleId)->where('like_type', $oppositeLikeType)->delete();

            BattleLike::create([
                'user_id' => $userId,
                'like_type' => $likeType,
                'battle_id' => $battleId
            ]);
            $message = 'battle liked successfully';
        }
        // Get the updated like count for the specific like_type
        $likeCount = $battle->likes()->where('like_type', $likeType)->count();

        return response()->json(['message' => $message, 'likeCount' => $likeCount]);
    });


    Route::post('/likeBangUpdate', function (Request $request) {
        $postId = $request->input('post_id');
        $userId = $request->input('user_id');
        $likeBangUpdate = BangUpdate::find($postId);
        $user = User::find($userId);
        if (!$likeBangUpdate || !$user) {
            return response()->json(['message' => 'Post or user not found'], 404);
        }
        $isLiked = $likeBangUpdate->bang_update_likes()->where('user_id', $user->id)->exists();
        if ($isLiked) {
            // User has already liked the post, so unlike it
            $likeBangUpdate->bang_update_likes()->detach($user->id);
            $message = 'Post unliked successfully';
        } else {
            // User hasn't liked the post yet, so like it
            $likeBangUpdate->bang_update_likes()->attach($user->id);
            $message = 'Post liked successfully';
        }
        // Get the updated like count
        $likeCount = $likeBangUpdate->bang_update_likes()->count();

        return response()->json(['message' => $message, 'likeCount' => $likeCount]);
    });

    Route::post('/storeToken', function (Request $request) {
        $user = User::Find($request->user_id);
        $user->device_token = $request->device_token;
        if ($user->save()) {
            return response()->json(['message' => 'Token stored successfully']);
        } else {
            return response()->json(['error' => 'Something went wrong']);
        }
    });

    Route::post('/sendNotification', function (Request $request) {
        $user = User::findOrFail($request->user_id);
        $deviceToken = $user->device_token;
        $pushNotificationService = new PushNotificationService();
        $pushNotificationService->sendPushNotification($deviceToken, $request->heading, $request->body, $request->challengeId, $request->type);
        return response(['message' => 'success'], 200);
    });

    Route::get('/getMyPosts', function (Request $request) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Get the _page and _limit parameters from the request query
        $pageNumber = $request->query('_page', 1);
        $numberOfPostsPerRequest = $request->query('_limit', 10);
        $user_id = $request->input('user_id');
        $viewerId = $request->input('viewer_id');
        $posts = Post::latest()->where('user_id', $user_id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
            'likes' => function ($query) {
                $query->select('post_id', 'like_type', DB::raw('count(*) as like_count'))
                    ->groupBy('post_id', 'like_type');
            },
        ])->paginate($numberOfPostsPerRequest, ['*'], '_page', $pageNumber);

        $posts->getCollection()->transform(function ($post) use ($appUrl, $user_id, $viewerId) {
            // Update the 'pinned' attribute based on whether the user has paid or not
            if ($post->hasUserPaid($viewerId,$post->id)) {
                $post->pinned = 0;
            }

            $post->post_views_count = $post->pinned == 1 ?  $post->payedCount() : $post->postViews->count();
             if ($post->type === 'image') {
                $post->image ? $post->image = $appUrl . 'storage/app/' . $post->image : $post->image = null;
                $post->challenge_img ? $post->challenge_img = $appUrl . 'storage/app/' . $post->challenge_img : $post->challenge_img = null;
                list($post->width, $post->height) =  [300, 300];
            }
            if ($post->type === 'video') {
                $post->image = $post->image;
                list($post->width, $post->height) = [300, 300];
            }
            $post->isLikedA = false;
            $post->isLikedB = false;
            $post->isLiked = false;
            // Check if the user has liked the post and update isLikedA and isLikedB accordingly
            $likeType = Post::getLikeTypeForUser($viewerId, $post->id);
            if ($likeType == "A") {
                $post->isLikedA = true;
                $post->isLiked = true;
            } elseif ($likeType == "B") {
                $post->isLikedB = true;
                //$post->isLiked = true;
            }
            // Retrieve the like counts for both A and B challenge images
            // $likeCount
            $likeCountA = 0;
            $likeCountB = 0;
            if ($post->likes->isNotEmpty()) {
                foreach ($post->likes as $like) {
                    if ($like->like_type === 'A') {
                        $likeCountA = $like->like_count;
                    } elseif ($like->like_type === 'B') {
                        $likeCountB = $like->like_count;
                    }
                }
            }
            $post->like_count_A = $likeCountA;
            $post->like_count_B = $likeCountB;
            return $post;
        });

        return response(['data' => $posts, 'message' => 'success'], 200);
    });

    Route::get('/getComments/{id}', function ($id) {
        $comments = Comment::where('post_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get(); // Corrected 'orderBy' here
        return response()->json(['comments' => $comments]);
    });

    Route::get('/getCommentsReplies/{id}', function ($id) {
        $commentsReplies = CommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get(); // Corrected 'orderBy' here
        return response()->json(['commentsReplies' => $commentsReplies]);
    });

    Route::get('/getBattleCommentsReplies/{id}', function ($id) {
        $commentsReplies = BattleCommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get(); // Corrected 'orderBy' here
        return response()->json(['commentsReplies' => $commentsReplies]);
    });

    Route::get('/getUpdateCommentsReplies/{id}', function ($id) {
        $commentsReplies = UpdateCommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get(); // Corrected 'orderBy' here
        return response()->json(['commentsReplies' => $commentsReplies]);
    });


    Route::get('/getPostInfo/{post_id}/{user_id}', function ($post_id, $user_id) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        $posts = Post::where('id', $post_id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
            'likes' => function ($query) {
                $query->select('post_id', 'like_type', DB::raw('count(*) as like_count'))
                    ->groupBy('post_id', 'like_type');
            },
        ])->get(); // Corrected 'orderBy' here

        $posts->transform(function ($post) use ($appUrl, $user_id) {
            $post->post_views_count = $post->pinned == 1 ?  $post->payedCount() : $post->postViews->count();
            if ($post->type === 'image') {
                $post->image ? $post->image = $appUrl . 'storage/app/' . $post->image : $post->image = null;
                $post->challenge_img ? $post->challenge_img = $appUrl . 'storage/app/' . $post->challenge_img : $post->challenge_img = null;
                list($post->width, $post->height) =  [300, 300];
            }
            if ($post->type === 'video') {
                $post->image = $post->image;
                list($post->width, $post->height) = [300, 300];
            }

            // Retrieve the like count
            $post->likeCount = 0;
            $likeCountA = 0;
            $likeCountB = 0;
            if ($post->likes->isNotEmpty()) {
                foreach ($post->likes as $like) {
                    if ($like->like_type === 'A') {
                        $likeCountA = $like->like_count;
                    } elseif ($like->like_type === 'B') {
                        $likeCountB = $like->like_count;
                    }
                }
            }

            $post->like_count_A = $likeCountA;
            $post->like_count_B = $likeCountB;
            $post->isLikedA = false;
            $post->isLikedB = false;
            $post->isLiked = false;
            // Check if the user has liked the post and update isLikedA and isLikedB accordingly
            $likeType = Post::getLikeTypeForUser($user_id, $post->id);
            if ($likeType == "A") {
                $post->isLikedA = true;
                $post->isLiked = true;
            } elseif ($likeType == "B") {
                $post->isLikedB = true;
            }

            return $post;
        });

        return response()->json($posts);
    });

    Route::get('/getUpdateInfo/{post_id}/{user_id}', function ($post_id, $user_id) {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        // Get the bang update and include like information for the given user
        $bangUpdate = BangUpdate::where('id', $post_id)
            ->with([
                'bang_update_likes' => function ($query) use ($user_id) {
                    $query->select('post_id', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id'); // Filter likes by user ID
                },
                'bang_update_like_count' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as like_count'))
                        ->groupBy('post_id');
                },
                'bang_update_comments' => function ($query) {
                    $query->select('post_id', DB::raw('count(*) as comment_count'))
                        ->groupBy('post_id');
                },
            ])->first();

        if (!$bangUpdate) {
            return response()->json(['message' => 'Update not found'], 404);
        }
        // Format the update and add the isLiked variable
        if ($bangUpdate->type == "image") {
            $bangUpdate->filename = $appUrl . 'storage/app/bangUpdates/' . $bangUpdate->filename;
        }
        // Check if the user has liked the post
        $bangUpdate->isLiked = DB::table('bang_update_likes')
            ->where('user_id', $user_id)
            ->where('post_id', $bangUpdate->id)
            ->exists();
        return response()->json($bangUpdate);
    });




    Route::get('/bangUpdateComment/{id}', function ($id) {
        $comments = bangUpdateComment::where('post_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['comments' => $comments]);
    });

    Route::post('/postComment', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $post = Post::find($request->post_id);
        $user = User::find($request->user_id);
        $comment = Comment::create([
            'user_id' => $request->user_id,
            'post_id' => $request->post_id,
            'body' => $request->body,
        ]);
        $comment = Comment::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($comment->id);
        if ($post->user->id <> $request->user_id) {
            $pushNotificationService = new PushNotificationService();
            $pushNotificationService->sendPushNotification($post->user->device_token, $user->name, commentMessage(), $request->post_id, 'comment',$comment->user->name,$comment->user->id);
            saveNotification($request->user_id, commentMessage(), 'comment', $post->user->id, $request->post_id);
        }
        return response(['data' => $comment, 'message' => 'success'], 200);
    });

    Route::post('/postCommentReply', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $post = Post::find($request->post_id);
        $user = User::find($request->user_id);
        $commentUser = Comment::find($request->comment_id);
        $comment = CommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ]);
        $comment = CommentReplies::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($comment->id);
        if ($commentUser->user->id <> $request->user_id) { 
             Log::info('uhakika naingia kwenye video');
            $pushNotificationService = new PushNotificationService();
            $pushNotificationService->sendPushNotification($commentUser->user->device_token, $comment->user->name, commentReplyMessage(), $request->post_id, 'comment',$comment->user->name,$comment->user->id);
            saveNotification($request->user_id, commentReplyMessage(), 'commentReply', $post->user->id, $request->post_id,);
         }
        return response(['data' => $comment, 'message' => 'success'], 200);
    });

    Route::post('/postUpdateCommentReply', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $user = User::find($request->user_id);
        $updateComment = UpdateCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ]);
        $updateComment = UpdateCommentReplies::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($updateComment->id);
        
        return response(['data' => $updateComment, 'message' => 'success'], 200);
    });

    Route::post('/postBattleCommentReply', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
       
        $user = User::find($request->user_id);
        $battleComment = BattleCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ]);
        $battleComment = BattleCommentReplies::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($battleComment->id);
        
        return response(['data' => $battleComment, 'message' => 'success'], 200);
    });

    Route::post('/postUpdateComment', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $comment = bangUpdateComment::create([
            'user_id' => $request->user_id,
            'post_id' => $request->post_id,
            'body' => $request->body,
        ]);
        $comment = bangUpdateComment::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($comment->id);
        // $post->user->notify(new CommentedOnYourPost($post, auth()->user()));
        return response(['data' => $comment, 'message' => 'success'], 200);
    });

    Route::post('/acceptChallenge', function (request $request) {
        $challenge = Challenge::find($request->post_id);
        if ($challenge) {
            $challenge->confirmed = 1;
            if ($challenge->save()) {
                return response(['data' => $challenge, 'message' => 'success'], 200);
            }
        }
    });

    Route::get('/hobbies', function (Request $request) {
        // Retrieve hobbies with the count of associated users
        $hobbies = Hobby::withCount('users')
                        ->orderByDesc('users_count')
                        ->get(['id', 'name']);

        return response()->json($hobbies);
    });


    Route::get('/notificationIsRead/{notification_id}', function ($notification_id) {
        $notification = Notification::find($notification_id);

        if ($notification) {
            $notification->is_read = true; // Assuming you have an "is_read" column
            $notification->save();
            return response()->json(['message' => 'Notification updated as read']);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    });

    Route::get('/deleteNotification/{notification_id}', function ($notification_id) {
        $notification = Notification::find($notification_id);
        if ($notification) {
            $notification->delete();
            return response()->json(['message' => 'Notification deleted']);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    });

    Route::get('/deleteComment/{commentId}', function ($commentId) {
        $comment = Comment::find($commentId);
        if ($comment) {
            $comment->commentReplies()->delete();
            $comment->delete();
            return response()->json(['message' => 'Comment deleted']);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    });

    Route::get('/deleteUpdateComment/{updateCommentId}', function ($updateCommentId) {
        $updateComment = bangUpdateComment::find($updateCommentId);
        if ($updateComment) {
            $updateComment->commentReplies()->delete();
            $updateComment->delete();
            return response()->json(['message' => 'Comment deleted'],200);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    });

    Route::get('/deleteBattleComment/{battleComment}', function ($battleComment) {
        $battleComment = BattleComment::find($battleComment);

        if ($battleComment) {
            $battleComment->commentReplies()->delete();
            $battleComment->delete();
            return response()->json(['message' => 'Comment deleted'],200);
        } else {
            return response()->json(['message' => 'battle Comment not found'], 404);
        }
    });


    Route::post('/setUserProfile', function (request $request) {
        $user = User::findOrFail($request->user_id);
        // Update the user's profile
        if ($request->hasFile('image')) {
            // Save the profile picture and get its path
            $profilePicturePath = $request->file('image')->store('profile_pictures');
            $user->image = $profilePicturePath;
        }
        if (json_decode($request->hobbies) > 0) {
            foreach (json_decode($request->hobbies) as $key => $value) {
                UserHobby::create(['user_id' => $user->id, 'hobby_id' => $value]);
            }
        }
        if (!empty($request->input('name'))) {
            $user->name = $request->input('name');
        }
        $user->date_of_birth = $request->input('date_of_birth');
        $user->phone_number = $request->input('phoneNumber');
        $user->occupation = $request->input('occupation');
        $user->bio = $request->input('bio');
        $user->update();
        return response()->json(['message' => 'Profile updated successfully']);
    });


    Route::post('/postBattleComment', function (request $request, Post $post) {
        $request->validate([
            'body' => 'string|min:3|max:6000',
        ]);
        $comment = BattleComment::create([
            'user_id' => $request->user_id,
            'battles_id' => $request->post_id,
            'body' => $request->body,
        ]);
        $comment = BattleComment::with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->findOrFail($comment->id);
        // $post->user->notify(new CommentedOnYourPost($post, auth()->user()));
        return response(['data' => $comment, 'message' => 'success'], 200);
    });


    Route::get('/bangBattleComment/{id}', function ($id) {
        $comments = BattleComment::where('battles_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->get();
        return response()->json(['comments' => $comments]);
    });


    Route::get('/getBangBattle/{user_id}', function ($user_id) {

        $appUrl = "https://bangapp.pro/BangAppBackend/";
        $battles = BangBattle::latest()->with([
            'likes' => function ($query) {
                $query->select('battle_id', 'like_type', DB::raw('count(*) as like_count'))
                    ->groupBy('battle_id', 'like_type');
            },
        ])->get();

        $battles->transform(function ($battle) use ($appUrl, $user_id) {
            $battle->battle1 ? $battle->battle1 = $appUrl . 'storage/app/' . $battle->battle1 : $battle->battle1 = null;
            $battle->battle2 ? $battle->battle2 = $appUrl . 'storage/app/' . $battle->battle2 : $battle->battle2 = null;
            $battle->cover_image ? $battle->cover_image = $appUrl . 'storage/app/' . $battle->cover_image : $battle->cover_image = null;
            $battle->cover_image2 ? $battle->cover_image2 = $appUrl . 'storage/app/' . $battle->cover_image2 : $battle->cover_image2 = null;
            $battle->isLikedA = false;
            $battle->isLikedB = false;
            $battle->isLiked = false;
            // Check if the user has liked the battle and update isLikedA and isLikedB accordingly
            $likeType = BangBattle::getLikeTypeForUser($user_id, $battle->id);
            $battle->comment_count = BangBattle::getCommentCount($battle->id);
            if ($likeType == "A") {
                $battle->isLikedA = true;
                $battle->isLiked = true;
            } elseif ($likeType == "B") {
                $battle->isLikedB = true;
                //$battle->isLiked = true;
            }

            // Retrieve the like counts for both A and B challenge images
            // $likeCount
            $likeCountA = 0;
            $likeCountB = 0;
            if ($battle->likes->isNotEmpty()) {
                foreach ($battle->likes as $like) {
                    if ($like->like_type === 'A') {
                        $likeCountA = $like->like_count;
                    } elseif ($like->like_type === 'B') {
                        $likeCountB = $like->like_count;
                    }
                }
            }
            $battle->like_count_A = $likeCountA;
            $battle->like_count_B = $likeCountB;
            return $battle;
        });

        return response()->json(['data' => $battles]);
    });


    Route::get('/getNotifications/{user_id}/{page?}/{perPage?}', function ($user_id, $page = 1, $perPage = 10) {
        $notifications = Notification::where('reference_id', $user_id)
            ->with([
                'user' => function ($query) {
                    $query->select('id', 'name', 'image');
                },
                'post' => function ($query) {
                    $query->select('id', 'image', 'thumbnail_url');
                }
            ])
            ->orderByDesc('created_at')
            ->paginate($perPage, ['*'], 'page', $page);
        foreach ($notifications as $notification) {
            $notification->update(['is_read' => 1]);
        }
        return response()->json(['notifications' => $notifications]);
    });

    Route::post('/reportPost', function(Request $request) {
        $request->validate([
            'post_id' => 'required|exists:posts,id', // Ensure the post_id exists in the posts table
            'reason' => 'required|string|max:255', // Validate the reason for reporting
            'user_id' => 'required|exists:users,id', // Ensure the user_id exists in the users table
        ]);

        // Check if the user has already reported this post
        $existingReport = ReportedPost::where('post_id', $request->post_id)
                                      ->where('user_id', $request->user_id) // Use user_id from request
                                      ->first();

        if ($existingReport) {
            return response()->json(['message' => 'You have already reported this post.'], 400);
        }

        $reportedPost = new ReportedPost();
        $reportedPost->post_id = $request->post_id;
        $reportedPost->user_id = $request->user_id;
        $reportedPost->reason = $request->reason;
        $reportedPost->save();

        return response()->json(['message' => 'Post reported successfully.'], 200);
    });


    function likeMessage()
    {
        return "Has Liked Your Post";
    }

    function friendRequestMessage()
    {
        return "Has Requested to be Your Friend";
    }

    function friendAcceptMessage($friendName)
    {
        return "You are now friends with ".$friendName;
    }

    function commentMessage()
    {
        return "Has Commented on Your Post";
    }

    function commentReplyMessage()
    {
        return "Has Replied to Your Comment";
    }

    function chatMessage()
    {
        return "Has Messaged You";
    }



    function saveNotification($user_id, $body, $type, $reference_id, $post_id)
    {
        $notification = new Notification;
        $notification->user_id = $user_id;
        $notification->message = $body;
        $notification->type = $type;
        $notification->reference_id = $reference_id;
        $notification->post_id = $post_id;
        $notification->save();
    }

    function deleteVideoApi($uid)
    {
        Log::info('uhakika naingia kwenye video');
        Log::info($uid);
        $apiUrl = "https://video.bangapp.pro/api/v1/delete-video";
        
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => $apiUrl,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode(['uid' => $uid]), // Assuming you need to pass the ID in the request body
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
                // Add any other headers if required
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        Log::info(json_encode($response));
        return $response;
    }

    Route::post('/subscribe', function(Request $request) {
        $request->validate([
            'user_id' => 'required|exists:users,id', // Ensure the user_id exists in the users table
        ]);

        $currentMonth = date('Y-m');

       $existingSubscription = Subscription::where('subscriber_id', $request->subscriber_id)
                                        ->where('user_id', $request->user_id)
                                        ->whereDate('created_at', '>=', now()->subDays(30))
                                        ->first();

        if ($existingSubscription) {
            return response()->json(['message' => 'Subscription already exists for this month'], 400);
        }

        $subscription = new Subscription();
        $subscription->subscriber_id = $request->subscriber_id; // Assuming you're using Laravel's authentication
        $subscription->user_id = $request->user_id;
        $subscription->save();

        return response()->json(['message' => 'Subscription saved successfully'], 200);
    });

    Route::get('/insights/{user_id}', function($user_id){
        $userPosts = DB::table('azampays')
                        ->join('posts', 'azampays.post_id', '=', 'posts.id')
                        ->select('azampays.amount')
                        ->where('posts.user_id', $user_id)
                        ->where('azampays.type', 'post')
                        ->get();

        $userSubscriptions = DB::table('azampays')
                                ->select('amount')
                                ->where('post_id', $user_id)
                                ->where('type', 'subscription')
                                ->get();
        $userMessages = DB::table('azampays')
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
    });


    Route::post('/pinMessage', function (Request $request) {
        $user = User::find($request->user_id);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        $user->update(['public' => !$user->public ?? false]);
        return response()->json(['message' => 'Public toggled successfully', 'value' => $user->public]);
    });

    Route::post('/pinProfile', function (Request $request) {
        $user = User::find($request->user_id);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        $user->update(['subscribe' => !$user->subscribe ?? false]);
        return response()->json(['message' => 'Subscription toggled successfully', 'value' => $user->subscribe]);
    });

    Route::post('/setUserPinPrice', function (Request $request) {
        $user = User::find($request->user_id);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        $user->update(['price' => $request->price]);
        return response()->json(['message' => 'Price set successfully', 'price' => $user->price]);
    });

    Route::post('/setUserPinProfilePrice', function (Request $request) {
        $user = User::find($request->user_id);
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        $user->update(['subscriptionPrice' => $request->price]);
        return response()->json(['message' => 'Price set successfully', 'subscriptionPrice' => $user->subscriptionPrice]);
    });

    Route::get('/getNotificationCount/{user_id}', function ($user_id) {
        $notificationCount = Notification::where('is_read', 0)->where('reference_id', $user_id)->count();
        return response()->json(['notification_count' => $notificationCount]);
    });

    Route::get('/getPostLikes/{post_id}', function ($post_id) {
        $post = Post::findOrFail($post_id);
        $likes = $post->likess()->with('user:id,name,image')->get();
        $likedUsers = $likes->pluck('user');
        return response()->json(['liked_users' => $likedUsers]);
    });
});

Route::post('/sendNotification12', function (Request $request) {
    $user = User::findOrFail($request->user_id);
    $deviceToken = $user->device_token;
    $pushNotificationService = new PushNotificationService();
    $pushNotificationService->sendPushNotification($deviceToken, $request->heading, $request->body, $request->challengeId, $request->type);
    $notify =   $pushNotificationService->sendPushNotification12($deviceToken, $request->heading, $request->body, $request->challengeId, $request->type);
    return response()->json(['message' => $notify]);
});


Route::get('/deleteAccount/{userId}', function ($userId) {
    $user = User::findOrFail($userId);

    // Delete user's posts and associated images
    $user->posts->each(function ($post) {
        $post->comments()->delete();
        $post->likess()->delete();
        $post->postViews()->delete();
        if ($post->type == 'image') {
            Storage::delete($post->image);
            if ($post->challenge_img) {
                Storage::delete($post->challenge_img);
            }
        }
    });

    // Delete user's posts and associated images
    $user->bangUpdates->each(function ($update) {
        $update->comments()->delete();
        $update->likess()->delete();
        $update->bangUpdateViews()->delete();
        Storage::delete($update->filename);
    });


    // Delete user's comments if exist
    if ($user->comments()->exists()) {
        $user->comments()->delete();
    }

    // Delete user's likes if exist
    if ($user->likes()->exists()) {
        $user->likes()->delete();
    }

    // Delete user's followers if exist
    if ($user->followers()->exists()) {
        $user->followers()->delete();
    }

    // Delete user's hobbies if exist
    if ($user->hobbies()->exists()) {
        $user->hobbies()->delete();
    }

    // Delete user's postViews if exist
    if ($user->postViews()->exists()) {
        $user->postViews()->delete();
    }

    // Delete user's bangUpdateViews if exist
    if ($user->bangUpdateViews()->exists()) {
        $user->bangUpdateViews()->delete();
    }

    // Delete user's bangUpdateComments if exist
    if ($user->bangUpdateComments()->exists()) {
        $user->bangUpdateComments()->delete();
    }

    // Delete user's bangUpdateLikes if exist
    if ($user->bangUpdateLikes()->exists()) {
        $user->bangUpdateLikes()->delete();
    }

    // Delete user's battleComments if exist
    if ($user->battleComments()->exists()) {
        $user->battleComments()->delete();
    }

    // Delete user's battleLikes if exist
    if ($user->battleLikes()->exists()) {
        $user->battleLikes()->delete();
    }

    // Delete user's azamPay if exist
    if ($user->azamPay()->exists()) {
        $user->azamPay()->delete();
    }

    // Delete user's bangUpdates if exist
    if ($user->bangUpdates()->exists()) {
        $user->bangUpdates()->delete();
    }

    // Delete user's posts if exist
    if ($user->posts()->exists()) {
        $user->posts()->each(function ($post) {

            $post->delete();
        });
    }

    // Finally, delete the user
    $user->delete();

    return response()->json(['message' => 'User account deleted successfully'], 200);
});

Route::get('/resetPassword/{email}', function ($email) {
    // Find the user by email
    $user = User::where('email', $email)->first();
    if ($user) {
        $token = Str::random(60);
        $user->reset_password_token = $token;
        $user->save();
        $resetLink = url('/reset-password/' . $user->reset_password_token);
        Mail::to($user->email)->send(new ResetPasswordMail($user, $resetLink));
        return response()->json(['message' => 'Reset password link sent successfully'], 200);
    } else {
        return response()->json(['message' => 'User not found'], 404);
    }
});

Route::post('/buyFollowers', function (Request $request) {
    $user_id = $request->user_id;
    $count = $request->count;
    $selectedHobbyIds = $request->hobbies;
    if ($user_id && $selectedHobbyIds && $count > 0) {
        $users = UserHobby::whereIn('hobby_id', $selectedHobbyIds)
            ->limit($count)
            ->pluck('user_id')
            ->toArray();
        
        $followersAdded = 0;

        foreach ($users as $followerUserId) {
            if (!Follower::where('following_id', $user_id)->where('follower_id', $followerUserId)->exists()) {
                $follower = new Follower();
                $follower->following_id = $user_id;
                $follower->follower_id = $followerUserId;
                $follower->save();
                $followersAdded++; 
            }
        }
        return response()->json(['message' => 'Followers added successfully', 'followers_added' => $followersAdded]);
    } else {
        return response()->json(['error' => 'Invalid user ID, selected hobbies, or count'], 400);
    }
});



Route::post('/getSuggestedFriends', function(Request $request){
    $user_id = $request->user_id;
    $contacts = $request->contacts;
    $userHobbies = UserHobby::where('user_id', $user_id)->pluck('hobby_id');

    $usersByHobbies = UserHobby::whereIn('hobby_id', $userHobbies)
                                ->where('user_id', '!=', $user_id)
                                ->pluck('user_id');

     // Fetch friends IDs where the user is a friend or has been added as a friend
    $friendIds = friends::where(function ($query) use ($user_id) {
                            $query->where('user_id', $user_id)
                                  ->orWhere('friend_id', $user_id);
                        })
                        ->pluck('user_id', 'friend_id','confirmed')
                        ->toArray();

    $suggestedFriends = User::select('id', 'name')
                            ->whereIn('phone_number', $contacts)
                            ->orWhereIn('id', $usersByHobbies)
                            ->get();
     // Iterate through suggested friends and check if they are friends or added as friends
    $suggestedFriends->each(function ($friend) use ($user_id, $friendIds) {
        $friend->is_friend = isset($friendIds[$friend->id]);
        $friend->friend_added = isset($friendIds[$friend->id]) ? true : false;
    });

    return response()->json(['suggested_friends' => $suggestedFriends]);
});

Route::post('/requestFriendship', function(Request $request){
    $user_id = $request->user_id;
    $friend_id = $request->friend_id;
    $requestFriend = User::find($friend_id);
    $user = User::find($user_id);
    $existingFriendship = friends::where('user_id', $user_id)
                                ->where('friend_id', $friend_id)
                                ->exists();
    if (!$existingFriendship && $user_id != $friend_id) {
        $friend = new friends();
        $friend->user_id = $user_id;
        $friend->friend_id = $friend_id;
        $friend->confirmed = false;
        $friend->save();
        $pushNotificationService = new PushNotificationService();
        $pushNotificationService->sendPushNotification($requestFriend->device_token, $user->name, friendRequestMessage(), $friend->id, 'friend');
        saveNotification($user_id, friendRequestMessage(), 'friend', $friend_id, $friend->id);
        return response()->json(['message' => 'Friend added successfully'], 200);
    } else {
        return response()->json(['error' => 'Friendship already exists or invalid request'], 400);
    }
});


Route::post('/acceptFriendship', function(Request $request){
    $friendship_id = $request->friendship_id;
    $friendship = friends::where('id', $friendship_id)
                        ->where('confirmed', false)
                        ->first();
    if (!$friendship) {
        return response()->json(['error' => 'Friendship request not found or already confirmed'], 404);
    }
    $friendship->update(['confirmed' => true]);
    $pushNotificationService = new PushNotificationService();
    $pushNotificationService->sendPushNotification($friendship->user->device_token, $friendship->user->name, friendAcceptMessage($friendship->friend_user->name), $friendship_id, 'friend');
    return response()->json(['message' => 'Confirmed']);
});

Route::get('/allFriends/{user_id}', function($user_id){
    $friends = friends::where(function ($query) use ($user_id) {
                    $query->where('user_id', $user_id)
                          ->orWhere('friend_id', $user_id);
                })
                ->where('confirmed', true)
                ->get();

    $friendIds = $friends->pluck('user_id')->merge($friends->pluck('friend_id'))->filter(function ($id) use ($user_id) {
            return $id != $user_id;
        })->unique();

    $friendUsers = User::whereIn('id', $friendIds)->get();

    return response()->json(['friends' =>$friendUsers]);
});

Route::get('/allFollowers/{user_id}', function($user_id){
    $user = User::findOrFail($user_id);
    
    $followers = $user->followers()->get();
    
    return response()->json(['followers' =>$followers]);
});

Route::post('/declineFriendship', function(Request $request){
    $friendship_id = $request->friendship_id;
    $friendship = friends::where('id', $friendship_id)
                        ->where('confirmed', false)
                        ->first();
    if (!$friendship) {
        return response()->json(['error' => 'Friendship request not found or already confirmed'], 404);
    }
    $friendship->delete();
    return response()->json(['message' => 'Declined']);
});

Route::post('/blockUser', function(Request $request){
    $user_id = $request->user_id;
    $blocked_user_id = $request->blocked_user_id;
    if(BlockedUser::where('user_id',$user_id)->where('user_blocked_id',$blocked_user_id)->exists())
    {
        return response()->json(["message" => "User already blocked"]);
    }
    else{
        if($user_id <> $blocked_user_id) {
            $block = new BlockedUser();
            $block->user_id = $user_id;
            $block->user_blocked_id = $blocked_user_id;
            if($block->save()){
                return response()->json(["message" => "User blocked successfully"]);
            }
            else{
                return response()->json(["message" => "Something went wrong"]);
            }
        }
    }
});

Route::post('/unblockUser', function(Request $request){
    $user_id = $request->user_id;
    $blocked_user_id = $request->blocked_user_id;
    $block = BlockedUser::where('user_id',$user_id)->where('user_blocked_id',$blocked_user_id)->first();
    if($block){
        $block->delete();
        return response()->json(["message" => "User Unblocked Successfully"]);
    }
    else{
        return response()->json(["message" => "User Not Blocked"]);
    }
});


Route::get('/getBlockedUsers/{userId}', function($user_id) {
    $users_blocked = BlockedUser::where('user_id', $user_id)->get();
    return response()->json(["users_blocked" => $users_blocked]);
});


Route::post('/deleteFriendship', function(Request $request){
    $user_id = $request->user_id;
    $friend_id = $request->friend_id;
    $friendship = friends::where('user_id', $user_id)
                        ->where('friend_id', $friend_id)
                        ->first();
    if($friendship){
        $friendship->delete();
        return response()->json(["message" => "Friendship Deleted Successfully"]);
    }
    else{
        return response()->json(["message" => "Friendship not Found"]);
    }
});

Route::post('/fewerPosts', function(Request $request){
    $user_id = $request->user_id;
    $post_id = $request->post_id;
    $user_post_id = $request->user_post_id;
    if(FewerPost::where('user_id',$user_id)->where('post_id',$post_id)->where('user_post_id',$user_post_id)->exists()){
        return response()->json(["message" => "Submission Exists"]);
    }
    else{
        $fewer = new FewerPost();
        $fewer->user_id = $user_id;
        $fewer->post_id = $post_id;
        $fewer->user_post_id = $user_post_id;
        if($fewer->save()){
            return response()->json(["message" => "We Will Show You Fewer Posts Like This"]);
        }
        else{
            return response()->json(["message" => "Something Went Wrong"]);
        }
    }
});


Route::get('/add5HobbiesToUsers', function(){
    $users = User::all();
    $hobbies = Hobby::all();
    foreach ($users as $user) {
        $randomHobbyIds = $hobbies->random(5)->pluck('id');
        $user->hobbies()->attach($randomHobbyIds);
    }
    return response()->json(['message' => '5 random hobbies added to users successfully']);
});

Route::group(['prefix' => 'v1'], function () {

    Route::post('/register', 'Api\AuthenticationController@register');

    Route::post('/registerGoogleUser', 'Api\AuthenticationController@registerGoogleUser');

    Route::get('/users/getCurrentUser', 'Api\AuthenticationController@getCurrentUser');

    Route::post('/login', 'Api\AuthenticationController@login')->name('login');

    Route::group(['middleware' => ['auth:api']], function () {
        //get user
        Route::get('/users/{user}', 'Api\AuthenticationController@user');
        //profile
        Route::get('/profile', 'Api\ProfilesController@show');
        Route::post('/profile', 'Api\ProfilesController@update');
        //posts
        Route::apiResource('posts', 'Api\PostsController');
        Route::get('/users/{user}/posts', 'Api\PostsController@userPosts');
        Route::post('/posts/{post}/favorite', 'Api\FavoritesController@storePost');
        Route::post('/posts/{post}/un_favorite', 'Api\FavoritesController@destroyPost');
        //comments
        Route::get('/posts/{post}/comments', 'Api\CommentsController@index');
        Route::post('/posts/{post}/comments', 'Api\CommentsController@store');
        Route::put('comments/{comment}', 'Api\CommentsController@update');
        Route::delete('comments/{comment}', 'Api\CommentsController@destroy');
        Route::post('/comments/{comment}/favorite', 'Api\FavoritesController@storeComment');
        Route::post('/comments/{comment}/un_favorite', 'Api\FavoritesController@destroyComment');
        //notifications
        Route::get('/notifications', 'Api\NotificationsController@index');
        Route::post('/notifications/mark_read', 'Api\NotificationsController@markAllAsRead');
        //followers
        Route::post('/follow/{user}', 'Api\FollowersController@follow');
        Route::post('/un_follow/{user}', 'Api\FollowersController@unFollow');
        //categories
        Route::get('categories', 'Api\CategoriesController@index');
    });

    Route::middleware('auth:api')->get('/user', function (Request $request) {
        return $request->user();
    });
});



Route::any('/associateOneSignalPlayerId', [ChatController::class, 'associateOneSignalPlayerId']);

Route::get('/getAllConversations', [ChatController::class, 'getAllConversations']);
Route::get('/getChatMessages', [ChatController::class, 'getMessages']);
Route::post('/sendMessage', [ChatController::class, 'sendMessage']);
Route::any('/startNewChat', [ChatController::class, 'startConversation']);
Route::post('/markMessageAsRead', [ChatController::class, 'markMessageAsRead']);
Route::post('/deleteConversation', [ChatController::class, 'deleteConversation']);
Route::post('/deleteMessage', [ChatController::class, 'deleteMessage']);
Route::post('/deleteAllMessages', [ChatController::class, 'deleteAllMessages']);
Route::post('/deleteAllConversations', [ChatController::class, 'deleteAllConversations']);
Route::post('/deleteAllMessagesInConversation', [ChatController::class, 'deleteAllMessagesInConversation']);
Route::post('/sendImageMessage', [ChatController::class, 'storeImageMessage']);
Route::post('/sendImageMessage', [ChatController::class, 'storeImageMessage']);
Route::post('/sendVideoMessage', [ChatController::class, 'storeVideoMessage']);
Route::get('/getTotalUnreadMessages', [ChatController::class, 'getTotalUnreadMessages']);
