<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class friends extends Model
{
    use HasFactory;
    protected $table = 'friends';
    protected $fillable = [
    	'user_id',
    	'friend_id',
    	'confirmed',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function friendUser()
    {
        return $this->belongsTo(User::class, 'friend_id');
    }

}
