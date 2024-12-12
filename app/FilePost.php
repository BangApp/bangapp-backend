<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilePost extends Model
{
    use HasFactory;
    protected $table ='files';
    protected $fillable = ['user_id','file_name','file_path','file_type','file_size','body','pinned','price'];

   
}
