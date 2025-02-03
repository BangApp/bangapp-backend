<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RepliesToBangUpdateCommentReplies extends Model
{
    use HasFactory;
    protected $fillable = ['user_id', 'comment_id','body'];
    protected $appends = ['user_image_url'];

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

    public function getUserImageUrlAttribute() {
        $appUrl = env('APP_URL', 'https://bangapp.pro/BangAppBackend');
        return $appUrl .'storage/'.$this->user->image;
    }
}
