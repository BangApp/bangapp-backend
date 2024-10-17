<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;
    protected $fillable = ['user_id','file_name','file_path','file_type','file_size','body','pinned','price'];
    protected $appends =  ['file_path_url'];

    public function getFilePathUrlAttribute()
    {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        if ($this->file_path && $this->file_path !== null) {
            if (strpos($this->file_path, 'https') === 0) {
                return $this->file_path; // Return the image URL as it is
            } else {
                // If not, append the appUrl to the image URL
                return $appUrl . 'storage/app/' . $this->file_path;
            }
        }
        return "https://bangapp.pro/BangAppBackend/storage/app/bang_logo.jpg";
    }
}
