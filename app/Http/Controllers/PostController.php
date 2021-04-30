<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    public function index(){

        $posts = Post::latest()->where('post_type', 'post')->get();
        return view('backend.posts.index', compact('posts'));
    }

    public function create(){

        $categories = Category::orderBy('name', 'asc')->pluck('id','name');
        return view('backend.posts.create', compact('categories'));
    }

    public function store(Request $request){

        $request->validate([
            'title' => 'required|unique:posts',
            'sub_title' => 'required',
            'is_published' => 'required',
            'categories' => 'required',
            'details' => 'required'
        ],
    
        [
            'title.required' => 'Please enter post title',
            'sub_title.required' => 'Please enter subtitle',
            'is_published.required' => 'Please select published type',
            'details.required' => 'Please enter details',
            'categories.required' => 'Please select categories',
            'title.unique' => 'Title is already exist'
        ]);

        $post = new Post();
        $post->title = $request->title;
        $post->sub_title = $request->sub_title;
        $post->is_published = $request->is_published;
        $post->thumbnail = $request->thumbnail;
        $post->details = $request->details;
        $post->user_id = Auth::user()->id;
        $post->slug = Str::slug($request->title);
        $post->post_type ='post';
        $post->save();

        $post->categories()->sync($request->categories);

        session()->flash('message', 'Post successfully created');

        return redirect()->route('posts.index');
    }

    public function edit(Post $post){

        $categories = Category::orderBy('name', 'asc')->pluck('id','name');
        return view('backend.posts.edit', compact('categories', 'post'));
    }

    public function update(Request $request, Post $post){

        $request->validate([
            'title' => 'required|unique:posts,title,'.$post->id,
            'sub_title' => 'required',
            'is_published' => 'required',
            'categories' => 'required',
            'details' => 'required'
        ],
    
        [
            'title.required' => 'Please enter post title',
            'sub_title.required' => 'Please enter subtitle',
            'is_published.required' => 'Please select published type',
            'details.required' => 'Please enter details',
            'categories.required' => 'Please select categories',
            'title.unique' => 'Title is already exist'
        ]);

        $post->title = $request->title;
        $post->sub_title = $request->sub_title;
        $post->is_published = $request->is_published;
        $post->thumbnail = $request->thumbnail;
        $post->details = $request->details;
        $post->user_id = Auth::user()->id;
        $post->slug = Str::slug($request->title);
        $post->save();

        $post->categories()->sync($request->categories);

        session()->flash('message', 'Post successfully updated');

        return redirect()->route('posts.index');

    }

    public function destroy(Post $post){

        $post->delete();

        session()->flash('delete-message', 'Post '. $post->title. ' successfully deleted');

        return redirect()->route('posts.index');
    }
}
