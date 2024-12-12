<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FriendRequest extends Model
{
    use HasFactory;
    protected $fillable = ['id','sender_id','receiver_id','status','created_at','updated_at'];
}