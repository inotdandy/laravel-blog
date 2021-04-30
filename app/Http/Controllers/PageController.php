<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PageController extends Controller
{
    public function index(){

        $pages = Post::where('post_type', 'page')->latest()->get();

        return view('backend.pages.index', compact('pages'));
    }

    public function create(){

        return view('backend.pages.create');

    }

    public function store(Request $request){

        $request->validate([
            'title' => 'required|unique:posts',
            'is_published' => 'required',
            'details' => 'required'
        ],
    
        [
            'title.required' => 'Please enter post title',
            'is_published.required' => 'Please select published type',
            'details.required' => 'Please enter details',
            'title.unique' => 'Title is already exist'
        ]);

        $post = new Post();
        $post->title = $request->title;
        $post->sub_title = 'none';
        $post->is_published = $request->is_published;
        $post->thumbnail = $request->thumbnail;
        $post->details = $request->details;
        $post->user_id = Auth::user()->id;
        $post->post_type = 'page';
        $post->slug = Str::slug($request->title);
        $post->save();

        
        session()->flash('message', 'Page successfully created');

        return redirect()->route('pages.index');
    }

    public function edit($slug){
        
        $post = Post::where('slug', $slug)->firstOrFail();
        
        return view('backend.pages.edit', compact('post'));
    }

    public function update(Request $request, $slug){

        $post = Post::where('slug', $slug)->firstOrFail();
        
        $request->validate([
            'title' => 'required|unique:posts,title,'.$post->id,
            'is_published' => 'required',
            'details' => 'required'
        ],
    
        [
            'title.required' => 'Please enter post title',
            'is_published.required' => 'Please select published type',
            'details.required' => 'Please enter details',
            'title.unique' => 'Title is already exist'
        ]);
        
        $post->title = $request->title;
        $post->post_type = 'page';
        $post->sub_title = 'none';
        $post->is_published = $request->is_published;
        $post->thumbnail = $request->thumbnail;
        $post->details = $request->details;
        $post->user_id = Auth::user()->id;
        $post->slug = Str::slug($request->title);
        $post->save();

        session()->flash('message', 'Page successfully updated');

        return redirect()->route('pages.index');

    }

    public function destroy($slug){
        
        $page = Post::where('slug', $slug)->firstOrFail();

        $page->delete();

        session()->flash('delete-message', 'Page successfully deleted');

        return redirect()->route('pages.index');
    }
}
