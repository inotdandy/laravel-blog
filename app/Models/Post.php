<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'thumbnail', 'title', 'slug', 'details', 'is_published', 'post_type'];

    public function user(){
        
        return $this->belongsTo(User::class);
    }

    public function categories(){

        return $this->belongsToMany(Category::class);
    }
}
