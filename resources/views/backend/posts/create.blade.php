@extends('layouts.app')

@push('styles')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush

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
                            <textarea name="details" id="details" class="form-control @error('details') is-invalid @enderror"></textarea>

                            @error('details')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="categories">Categories</label>
                            <select name="categories[]" id="categories" class="form-control" multiple="multiple">
                                @foreach($categories as $key => $value)
                                    <option value="{{$value}}">{{$key}}</option>
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

@push('scripts')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>

    <script>
        $(document).ready(function() {
            CKEDITOR.replace('details');
            $('#categories').select2();
        });
    </script>
@endpush