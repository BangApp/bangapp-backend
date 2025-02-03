<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;


class BattleComment extends Model
{
    use HasFactory;

    protected $appends = ['user_image_url','replies_count'];
    protected $with = ['commentReplies'];
    protected $fillable = [
        'user_id',
        'battles_id',
        'body',
    ];

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

    public function commentReplies()
    {
        return $this->hasMany(BattleCommentReplies::class,'comment_id');
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
