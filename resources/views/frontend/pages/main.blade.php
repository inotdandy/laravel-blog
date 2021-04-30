@extends('layouts.frontend.master')

@section('content')

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          @php($pages = getPages())
          @foreach($pages as $page)
            <li class="nav-item">
              <a class="nav-link" href="{{ route('page', $page) }}">{{ $page->title }}</a>
            </li>
          @endforeach
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('{{ asset('frontend/img/home-bg.jpg') }}')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Clean Blog</h1>
            <span class="subheading">A Blog Theme by Start Bootstrap</span>
          </div>
        </div>
      </div>
    </div>
  </header>

<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 mx-auto">
      @foreach($posts as $post)
        <div class="post-preview">
          <a href="{{ route('post', $post)}}">
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
              <span class="post-category">
                  Category: 
                    @foreach($post->categories as $category)
                      <a href="{{ route('category', $category) }}">{{ $category->name }}
                      </a>
                    @endforeach
                </span>
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
              <li><a href="{{ route('category', $category) }}">{{ $category->name }}</a></li>
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </div>
  
@endsection