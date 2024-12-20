<?php

namespace App\Http\Controllers\Api;

use App\Comment;
use App\Http\Controllers\Controller;
use App\Notifications\CommentedOnYourPost;
use App\Post;
use App\User;
use App\Http\Controllers\PushNotificationService;
use App\UpdateCommentReplies;
use App\BattleCommentReplies;
use App\RepliesToCommentReplies;
use App\RepliesToBattleCommentReplies;
use App\bangUpdateComment;
use App\BattleComment;
use App\CommentReplies;
use Illuminate\Http\Request;

class CommentsController extends Controller
{

    function comments (Post $post) {
        $comments = $post->comments()->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->paginate(10);
        return response(['data' => $comments, 'message' => 'success'], 200);
    }

    function getComments ($id) {
        $comments = Comment::where('post_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['comments' => $comments]);
    }

    function getCommentsReplies($id) {
        $commentsReplies = CommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['commentsReplies' => $commentsReplies]);
    }

    function getBattleCommentsReplies($id) {
        $commentsReplies = BattleCommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['commentsReplies' => $commentsReplies]);
    }

    function getUpdateCommentsReplies($id) {
        $commentsReplies = UpdateCommentReplies::where('comment_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['commentsReplies' => $commentsReplies]);
    }

    function bangUpdateComment($id) {
        $comments = bangUpdateComment::where('post_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->orderBy('created_at', 'asc')->get();
        return response()->json(['comments' => $comments]);
    }

    function postComment(request $request, Post $post) {
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
    }

    function postCommentReply(request $request, Post $post) {
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
        ])->load(['user:id,name,image']);

        if ($commentUser->user->id <> $request->user_id) {
            $pushNotificationService = new PushNotificationService();
            $pushNotificationService->sendPushNotification($commentUser->user->device_token, $comment->user->name, commentReplyMessage(), $request->post_id, 'comment',$comment->user->name,$comment->user->id);
            saveNotification($request->user_id, commentReplyMessage(), 'commentReply', $post->user->id, $request->post_id,);
         }
        return response(['data' => $comment, 'message' => 'success'], 200);
    }

    function postReplyToCommentReply(request $request, Post $post){
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $post = Post::find($request->post_id);
        $user = User::find($request->user_id);
        $commentUser = CommentReplies::find($request->comment_id);
        $comment = RepliesToCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ])->load(['user:id,name,image']);
        if ($commentUser->user->id <> $request->user_id) {
            $pushNotificationService = new PushNotificationService();
            $pushNotificationService->sendPushNotification($commentUser->user->device_token, $comment->user->name, commentReplyMessage(), $request->post_id, 'comment',$comment->user->name,$comment->user->id);
            saveNotification($request->user_id, commentReplyMessage(), 'commentReply', $post->user->id, $request->post_id,);
        }
        return response(['data' => $comment, 'message' => 'success'], 200);
    }

    function postUpdateCommentReply(Request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $updateComment = UpdateCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ])->load(['user:id,name,image']);
        return response(['data' => $updateComment, 'message' => 'success'], 200);
    }

    function postReplyUpdateCommentReply(request $request, Post $post){
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $updateComment = RepliesToBangUpdateCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ])->load(['user:id,name,image']);
        return response(['data' => $updateComment, 'message' => 'success'], 200);
    }

    function postBattleCommentReply(request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);

        $battleComment = BattleCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ])->load(['user:id,name,image']);

        return response(['data' => $battleComment, 'message' => 'success'], 200);
    }

    function postReplyBattleCommentReply(Request $request, Post $post){
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $battleComment = RepliesToBattleCommentReplies::create([
            'user_id' => $request->user_id,
            'comment_id' => $request->comment_id,
            'body' => $request->body,
        ])->load(['user:id,name,image']);
        return response(['data' => $battleComment, 'message' => 'success'], 200);
    }

    function postUpdateComment(request $request, Post $post) {
        $request->validate([
            'body' => 'string|max:6000',
        ]);
        $comment = bangUpdateComment::create([
            'user_id' => $request->user_id,
            'post_id' => $request->post_id,
            'body' => $request->body,
        ])->load(['user:id,name,image','commentReplies']);
        return response(['data' => $comment, 'message' => 'success'], 200);
    }


    function deleteComment($commentId) {
        $comment = Comment::find($commentId);
        if ($comment) {
            deleteNoticiation($comment->post_id);
            $comment->commentReplies()->delete();
            $comment->delete();
            return response()->json(['message' => 'Comment deleted']);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    }

    function deleteUpdateComment($updateCommentId) {
        $updateComment = bangUpdateComment::find($updateCommentId);
        if ($updateComment) {
            $updateComment->commentReplies()->delete();
            $updateComment->delete();
            return response()->json(['message' => 'Comment deleted'],200);
        } else {
            return response()->json(['message' => 'Notification not found'], 404);
        }
    }

    function deleteBattleComment($battleComment) {
        $battleComment = BattleComment::find($battleComment);

        if ($battleComment) {
            $battleComment->commentReplies()->delete();
            $battleComment->delete();
            return response()->json(['message' => 'Comment deleted'],200);
        } else {
            return response()->json(['message' => 'battle Comment not found'], 404);
        }
    }


    function postBattleComment(request $request, Post $post) {
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
    }


    function bangBattleComment($id) {
        $comments = BattleComment::where('battles_id', $id)->with([
            'user' => function ($query) {
                $query->select('id', 'name', 'image');
            },
        ])->get();
        return response()->json(['comments' => $comments]);
    }





}
