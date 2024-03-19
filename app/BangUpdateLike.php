<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BangUpdateLike extends Model
{
    use HasFactory;

    protected $table = "bang_update_likes";

     protected $fillable = [
        'user_id', 'post_id',
    ];

    public function user()
	{
    	return $this->belongsTo(User::class);
	}
}
