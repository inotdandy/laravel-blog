<?php

use Illuminate\Support\Facades\Route;
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
Route::get('/category/{slug}', [WebsiteController::class, 'category'])->name('category');
Route::get('/post/{slug}',[WebsiteController::class, 'post'])->name('post');
Route::get('/page/{slug}', [WebsiteController::class, 'page'])->name('page');
Route::get('/contact/create', [WebsiteController::class, 'createContact'])->name('contact.create');
Route::post('/contact', [WebsiteController::class, 'storeContact'])->name('contact.store');

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){

    Route::resources([
        'categories' => CategoryController::class,
        'posts' => PostController::class,
        'galleries' => GalleryController::class,
    ]);
});