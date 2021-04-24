@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row">
        <div class="col">
            @if(Session::has('message'))
                <div class="alert alert-success alert-dismisssible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                    {{ Session::get('message')}}
                </div>
            @endif

            @if(Session::has('delete-message'))
                <div class="alert alert-danger alert-dismisssible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                    {{ Session::get('delete-message')}}
                </div>
            @endif
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-header">
                    {{ __('Posts - List') }}
                    <a href="{{ route('posts.create') }}" class="btn-primary btn-sm float-right">Add new</a>    
                </div>

                <div class="card-body">
                    <table class="table table-bordered mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Title</th>
                                <th>Created by</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach($posts as $post)
                                <tr>
                                    <td>{{ $post->id }}</td>
                                    <td>{{ $post->title }}</td>
                                    <td>{{ $post->user->name }}</td>
                                    <td class="d-flex justify-content-center">
                                        <a href="{{ route('posts.edit', $post) }}" class="btn btn-sm btn-primary mr-3">Edit</a>
                                        <form action="{{ route('posts.destroy', $post) }}" method="post">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn-sm btn-danger">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
