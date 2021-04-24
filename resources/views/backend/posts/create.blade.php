@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-header">
                    {{ __('Create Post') }}
                </div>

                <div class="card-body">
                    <form action="{{route('posts.store')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="thumbnail">Thumbnail</label>
                            <input type="text" name="thumbnail" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" >

                            @error('title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror

                        </div>

                        <div class="form-group">
                            <label for="sub_title">Subtitle</label>
                            <input type="text" name="sub_title" class="form-control @error('sub_title') is-invalid @enderror" >

                            @error('sub_title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror

                        </div>

                        <div class="form-group">
                            <label for="details">Details</label>
                            <textarea name="details" id="details" class="form-control"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="categories">Categories</label>
                            <select name="categories" id="categories">
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="is_published"></label>
                            <select name="is_published" id="is_published" class="form-control @error('is_published') is-invalid @enderror">
                                <option value="0">Draft</option>
                                <option value="1">Published</option>
                            </select>

                            @error('is_published')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror

                        </div>

                        <div class="form-group">
                            <input type="submit" value="Save" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
