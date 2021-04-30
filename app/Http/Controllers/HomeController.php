<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categories = Category::latest()->limit(3)->get();
        $posts = Post::latest()->limit(3)->where('post_type', 'post')->where('is_published', 1)->get();
        $pages = Post::latest()->limit(3)->where('post_type', 'page')->where('is_published', 1)->get();
        
        return view('backend.index', compact('categories', 'posts', 'pages'));
    }
}
