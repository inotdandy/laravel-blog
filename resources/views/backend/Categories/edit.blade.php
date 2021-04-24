@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-header">
                    {{ __('Edit Category') }}
                </div>

                <div class="card-body">
                    <form action="{{route('categories.update', $category)}}" method="post">
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label for="thumbnail">Thumbnail</label>
                            <input type="text" name="thumbnail" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" value="{{ $category->name }}" >

                            @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror

                        </div>
                        <div class="form-group">
                            <label for="is_published">Type</label>
                            <select name="is_published" id="is_published" class="form-control @error('is_published') is-invalid @enderror">
                                <option value="0" {{ $category->is_published == 0 ? 'selected' : ''}}>Draft</option>
                                <option value="1" {{ $category->is_published == 1 ? 'selected' : ''}}>Published</option>
                            </select>

                            @error('is_published')
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
