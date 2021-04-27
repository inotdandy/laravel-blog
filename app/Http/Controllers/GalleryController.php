<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;

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
            $fileExt = $image_url->getClientOrginalExtension();

            $fileNameToStore = $fileName . '_' . $fileExt;

            $gallery = new Gallery();
            $gallery->image_url = $fileNameToStore;
            $gallery->user_id = Auth::user()->id;
            $save = $gallery->saveMany();

            if($save){
                $image_url->storeAs('public/galleries', $fileNameToStore);
            }
        }

        
        session()->flash('message', 'Images successfully uploaded');
        return redirect()->route('galleries.index');
    }
}
