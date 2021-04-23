<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index(){

        $posts = Post::orderBy('created_at', 'DESC')->where('is_published', 1)->paginate(5);
        $categories = Category::orderBy('created_at', 'ASC')->where('is_published', 1)->get();

        return view('main', compact('posts', 'categories'));
    }
}
