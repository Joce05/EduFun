<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\WriterController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\PopularController;


Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/admin')->group(function(){

    Route::get('/home',[HomeController::class, 'index'])->name('admin.home');

    Route::get('/category/{subject}',[CategoryController::class, 'index'])->name('admin.category');

    Route::get('/writer',[WriterController::class, 'index'])->name('admin.writer');

    Route::get('/writer/{id}',[WriterController::class, 'writerid'])->name('admin.writerid');

    Route::get('/article/{id}',[ArticleController::class, 'index'])->name('admin.article');

    Route::get('/about', function(){
        return view('about');
    })->name('admin.about');

    Route::get('/popular',[PopularController::class, 'index'])->name('admin.popular');
});
