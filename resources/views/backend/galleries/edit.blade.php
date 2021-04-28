@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-header">
                    {{ __('Gallery - Edit') }}
                </div>

                <div class="card-body">
                    <form action="{{route('galleries.update', $gallery)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <p><img src="{{ asset('storage/galleries/'. $gallery->image_url)}}" alt="" style="width:100px;"></p>
                            <label for="image_url">Select Image</label>
                            <input type="file" name="image_url" class="form-control-file @error('image_url') is-invalid @enderror" multiple>
                            @error('image_url')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror

                        </div>
                        
                        <div class="form-group">
                            <input type="submit" value="Update" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
