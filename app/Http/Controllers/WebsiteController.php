<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Mail\SendEmail;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class WebsiteController extends Controller
{
    public function index(){

        $posts = Post::orderBy('created_at', 'DESC')->where('is_published', 1)->paginate(5);
        $categories = Category::orderBy('created_at', 'ASC')->where('is_published', 1)->get();

        return view('frontend.pages.main', compact('posts', 'categories'));
    }

    public function singlePost(Post $post){

        $post = Post::where('post_type', 'post')->where('is_published', 1)->first();

        return view('frontend.pages.single-post', compact('post'));
    }

    public function singleCategory(Category $category){

        $category->where('is_published', 1)->first();
        
        $posts = $category->posts()->where('is_published', 1)->latest()->paginate(5);

        
        return view('frontend.pages.single-category', compact('category', 'posts'));
    }

    public function showPage($slug){

        $page = Post::where('slug', $slug)->where('post_type', 'page')->firstOrFail();

        return view('frontend.pages.single-page', compact('page'));
    }

    public function createContact(){

        return view('frontend.pages.contact');
    }

    public function storeContact(Request $request){

       $data = $request->all();

       Mail::to('dandy@test.com')->send(new SendEmail($data));

       session()->flash('message', 'Your message has been sent');

       return redirect()->back();
     
    }
}
