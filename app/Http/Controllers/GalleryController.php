<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class GalleryController extends Controller
{
    public function index(){

        $galleries = Gallery::latest()->get();

        return view('backend.galleries.index', compact('galleries'));
    }

    public function create(){

        return view('backend.galleries.create');
    }

    public function store(Request $request){

        $this->validate($request,[
            'image_url' => 'required'
        ],
            [
                'image_url.required' => 'Select image'        
            ]
        );

        foreach($request->image_url as $image_url){

            $fileNameWithExt = $image_url->getClientOriginalName();

            //just get file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //just get extension
            $fileExt = $image_url->getClientOriginalExtension();

            $fileNameToStore = $fileName . '.' . $fileExt;

            $gallery = new Gallery();
            $gallery->image_url = $fileNameToStore;
            $gallery->user_id = Auth::user()->id;
            $save = $gallery->save();

            if($save){

                $image_url->storeAs('public/galleries', $fileNameToStore);
            }
            
        }

        
        session()->flash('message', 'Images successfully uploaded');
        return redirect()->route('galleries.index');
    }

    public function edit(Gallery $gallery){

        return view('backend.galleries.edit', compact('gallery'));
    }

    public function update(Request $request, Gallery $gallery){
        
        $this->validate($request,[
            'image_url' => 'required'
        ],
            [
                'image_url.required' => 'Select image'        
            ]
        );

        $fileNameWithExt = $request->image_url->getClientOriginalName();

        //just get file name
        $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
        //just get extension
        $fileExt = $request->image_url->getClientOriginalExtension();

        $fileNameToStore = $fileName . '.' . $fileExt;

        $gallery->image_url = $fileNameToStore;
        $gallery->user_id = Auth::user()->id;
        $save = $gallery->save();

        if($save){

            $request->image_url->storeAs('public/galleries', $fileNameToStore);
        }
            

        session()->flash('message', 'Images successfully updated');
        return redirect()->route('galleries.index');

    }

    public function destroy(Gallery $gallery){

        Storage::delete('public/galleries/'. $gallery->image_url);
        $gallery->delete();

        session()->flash('delete-message', 'Gallery successfully deleted');

        return redirect()->route('galleries.index');
    }
}
