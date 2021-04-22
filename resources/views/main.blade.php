@extends('layouts.frontend.master')

@section('content')

<div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 mx-auto">
        <div class="post-preview">
          <a href="post.html">
            <h2 class="post-title">
              Man must explore, and this is exploration at its greatest
            </h2>
            <h3 class="post-subtitle">
              Problems look mighty small from 150 miles up
            </h3>
          </a>
          <p class="post-meta">Posted by
            <a href="#">Start Bootstrap</a>
            on September 24, 2019
            <span class="post-category">
              Category: <a href="">Laravel</a>
            </span>  
          </p>
        </div>
        <hr>
        <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
      
      
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="categeory">
          <h2 class="category-title">Category</h2>
          <ul class="category-list">
            <li><a href="">Laravel</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  
@endsection