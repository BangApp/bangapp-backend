<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Challenge extends Model
{
    use HasFactory;

    public function post(){
        return $this->belongsTo(Post::class, 'post_id');
    }

    public function user() {
        return $this->belongsTo(User::class,'user_id');
    }

    
}
