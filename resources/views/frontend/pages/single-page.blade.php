@extends('layouts.frontend.master')

@section('content')

@include('frontend.partials.nav')


<!-- Page Header -->
<header class="masthead" style="background-image: url('{{ $page->thumbnail }}')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h1>{{ $page->title }}</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <p>{!! $page->details !!}</p>
        </div>
      </div>
    </div>
  </article>

@endsection