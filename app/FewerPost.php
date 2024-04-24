<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FewerPost extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','post_id','user_post_id'];
}
