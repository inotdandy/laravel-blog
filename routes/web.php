<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\CategoryController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/', [WebsiteController::class, 'index'])->name('index');
Route::get('/category/{category}', [WebsiteController::class, 'singleCategory'])->name('category');
Route::get('/post/{post}',[WebsiteController::class, 'singlePost'])->name('post');
Route::get('/page/{page}', [WebsiteController::class, 'showPage'])->name('page');
Route::get('/contact/create', [WebsiteController::class, 'createContact'])->name('contact.create');
Route::post('/contact', [WebsiteController::class, 'storeContact'])->name('contact.store');

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){

    Route::resources([
        'categories' => CategoryController::class,
        'posts' => PostController::class,
        'galleries' => GalleryController::class,
        'pages' => PageController::class,
    ]);
});
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
