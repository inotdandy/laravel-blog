<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $posts = Post::latest()->where('post_type', 'post')->get();
        
        return view('backend.posts.index', compact('posts'));
    }

    public function create(){

        $categories = Category::orderBy('name', 'asc')->pluck('name', 'id');
        return view('backend.posts.create', compact('categories'));
    }
}
