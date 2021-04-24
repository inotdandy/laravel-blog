<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    public function index(){

        $categories = Category::latest()->get();

        return view('backend.categories.index', compact('categories'));
    }

    public function create(){

        return view('backend.categories.create');
    }

    public function store(Request $request){

        $request->validate([
            'name' => 'required|unique:categories',
            'is_published' => 'required'
            ],
            [
                'name.required' => 'Please enter category name',
                'name.unique' => 'Category name already exist',
                'is_published.required' => 'Please select category type'
            ]
        );

        $category = new Category();
        $category->name = $request->name;
        $category->thumbnail = $request->thumbnail;
        $category->user_id = Auth::user()->id;
        $category->slug = Str::slug($request->name);
        $category->save();

        session()->flash('message', 'Category successfully created');

        return redirect()->route('categories.index');
    }

    public function edit(Category $category){

        return view('backend.categories.edit', compact('category'));
    }

    public function update(Request $request, Category $category){

        $request->validate([
            'name' => 'required|unique:categories,name,'.$category->id,
            'is_published' => 'required'
            ],
            [
                'name.required' => 'Please enter category name',
                'name.unique' => 'Category name already exist',
                'is_published.required' => 'Please select category type'
            ]
        );

        $category->thumbnail = $request->thumbnail;
        $category->user_id = Auth::user()->id;
        $category->name = $request->name;
        $category->is_published = $request->is_published;
        $category->save();

        session()->flash('message', 'Category successfully updated');

        return redirect()->route('categories.index');
    }

    public function destroy(Category $category){

        $category->delete();

        session()->flash('delete-message', 'Category '.$category->name. ' successfully deleted');

        return redirect()->route('categories.index');
    }
}
