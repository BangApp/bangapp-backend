<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BattleCommentReplies extends Model
{
    use Favorable;

    protected $fillable = [
        'user_id', 'comment_id','body',
    ];
    protected $appends = ['user_image_url'];

    protected $with = ['battleComment'];

    public function battleComment()
    {
        return $this->belongsTo(BattleComment::class,'comment_id');
    }

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

     public function getUserImageUrlAttribute()
    {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        return $appUrl .'storage/app/'.$this->user->image;
    }
}
