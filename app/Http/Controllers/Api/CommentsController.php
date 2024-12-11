<?php

namespace App\Http\Controllers\Api;

use App\Comment;
use App\Http\Controllers\Controller;
use App\Notifications\CommentedOnYourPost;
use App\Post;
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

}
