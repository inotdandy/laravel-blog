@extends('layouts.frontend.master')

@section('content')

<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 mx-auto">
      @foreach($posts as $post)
        <div class="post-preview">
          <a href="{{ url('post/'.$post->slug)}}">
            <h2 class="post-title">
              {{$post->title}}
            </h2>
            <h3 class="post-subtitle">
              {{$post->sub_title}}
            </h3>
          </a>
          <p class="post-meta">Posted by
            <a href="#">{{$post->user->name}}</a>
            on {{  date("F j, Y", strtotime($post->created_at))}}
            @if($post->categories->count() > 0)
              @foreach($post->categories as $category)
                <span class="post-category">
                  Category: <a href="{{ url('category/'.$category->slug) }}">{{ $category->name }}</a>
                </span>
              @endforeach
            @endif  
          </p>
        </div>
        <hr>
      @endforeach
        <!-- Pager -->
        <div class="clearfix mt-4">
          {{$posts->links()}}
        </div>
      
      
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="categeory">
          <h2 class="category-title">Category</h2>
          <ul class="category-list">
            @foreach($categories as $category)
              <li><a href="{{ url('category/'.$category->slug) }}">{{ $category->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>
  
@endsection