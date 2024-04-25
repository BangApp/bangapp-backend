<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use App\Like;
use App\Comment;

class Post extends Model
{
    use Favorable;
    protected $appends = ['favoriteCount', 'isFavorited', 'commentCount','user_image_url'];
    protected $casts = ['isFavorited' => 'boolean'];
    protected $with = ['user:id,name,image,device_token', 'category:id,name'];
    protected $guarded = [];

    public function comments() {
        return $this->hasMany(Comment::class)->latest();
    }

    public function commentsDel() {
        return $this->hasMany(Comment::class,'user_id');
    }

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function getCommentCountAttribute() {
        return $this->comments()->count();
    }

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

    public function likes() {
        return $this->belongsToMany(User::class, 'likes', 'post_id', 'user_id');
    }

    public function likess()
    {
        return $this->hasMany(Like::class);
    }


    public function like() {
        return $this->belongsToMany(Like::class, 'likes', 'post_id', 'user_id');
    }

    public function challenges(){
        return $this->hasMany(Challenge::class, 'post_id');
    }

    public static function getLikeTypeForUser($userId, $postId)
    {
        $like = Like::where('user_id', $userId)
            ->where('post_id', $postId)
            ->first();

        if ($like) {
            return $like->like_type;
        }

        return null;
    }

    public static function getCommentCount($postId)
    {
        $commentCount = Comment::where('post_id',$postId)->count();
        if ($commentCount){
            return $commentCount;
        }
        return 0;
    }

    public static function updateIsSeen($postId)
    {
        $post = Post::find($postId);
        if($post){
            $post->update(['is_seen' => 1]);
            return true;
        }
        return false;
    }

    public static function unseenPosts($userId)
    {
        return static::whereDoesntHave('postViews', function ($query) use ($userId) {
            $query->where('user_id', $userId);
        });
    }

    public function postViews()
    {
        return $this->hasMany(PostView::class);
    }

    public function payedCount(){
        return $this->hasMany(azampay::class, 'post_id')->count();
    }

    public static function hasUserPaid($userId, $postId)
    {
        return azampay::where('user_id', $userId)
            ->where('post_id', $postId)
            ->where('type', 'post')
            ->exists();
    }
    
    public function getUserImageUrlAttribute()
    {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        // Check if the image URL starts with "https"
        if (strpos($this->image, 'https') === 0) {
            return $this->image; // Return the image URL as it is
        }
        else if($this->image==null){
            return "https://bangapp.pro/BangAppBackend/storage/app/bang_logo.jpg";
        }
         else {
            // If not, append the appUrl to the image URL
            return $appUrl . 'storage/app/' . $this->image;
        }
    }

}
