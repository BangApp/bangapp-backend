<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReportedPost extends Model
{
    use HasFactory;

    protected $fillable = [
    	'post_id',
    	'user_id',
    	'reason',
    ];
}
