<?php

namespace App\Http\Controllers\Api;

use App\Comment;
use App\Http\Controllers\Controller;
use App\Notifications\CommentedOnYourPost;
use App\Post;
use App\UpdateCommentReplies;
use App\BattleCommentReplies;
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


}
