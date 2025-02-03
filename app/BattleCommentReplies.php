<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;


class BattleCommentReplies extends Model
{
    use Favorable;
    protected $table = "battle_comment_replies";

    protected $fillable = [
        'user_id', 'comment_id','body',
    ];
    protected $appends = ['user_image_url'];

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

     public function getUserImageUrlAttribute()
    {
        $appUrl = env('APP_URL', 'https://bangapp.pro/BangAppBackend');
        return $appUrl .'storage/'.$this->user->image;
    }
}
