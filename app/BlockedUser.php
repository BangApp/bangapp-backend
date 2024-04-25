<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlockedUser extends Model
{
    use HasFactory;
    protected $fillable = ['user_blocked_id','user_id'];

   	protected $with = ['user:id,name,image,device_token'];
   	protected $appends = ['user_image_url'];


    public function user() {
        return $this->belongsTo(User::class,'user_blocked_id');
    }

    public function getUserImageUrlAttribute()
    {
        $appUrl = "https://bangapp.pro/BangAppBackend/";
        if ($this->user) {
            return $appUrl . 'storage/app/' . $this->user->image;
        }
        return ''; // or return a default image URL if you have one
    }
}
