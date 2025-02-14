<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;


class bangUpdateComment extends Model
{
    use HasFactory;

    protected $table ="bang_update_comments";

    protected $appends = ['user_image_url','replies_count'];
    protected $with = ['commentReplies'];
    protected $fillable = [
        'user_id',
        'post_id',
        'body',
    ];

    public function commentReplies() {
        return $this->hasMany(BattleCommentReplies::class,'comment_id');
    }
    
    public function user() {
        return $this->belongsTo(User::class);
    }

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

 	public function getUserImageUrlAttribute()
    {
        $appUrl = env('APP_URL', 'https://bangapp.pro/BangAppBackend');
        return $appUrl .'storage/'.$this->user->image;
    }

    public function getRepliesCountAttribute()
    {
        return BattleCommentReplies::where('comment_id', $this->id)->count();
    }
}
