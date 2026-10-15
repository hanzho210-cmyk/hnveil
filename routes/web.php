<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ArchiveController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserDashboardController;
use App\Models\Article;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CommentController;



Route::get('/', [HomeController::class, 'index'])
    ->name('home');

// Halaman publik
Route::get('/archives', [ArchiveController::class, 'index'])
    ->name('archives.index');

Route::get('/archives/{article}', [ArchiveController::class, 'show'])
    ->name('archives.show');


// USER
Route::middleware(['auth', 'verified'])->group(function () {

    Route::get('/dashboard', [UserDashboardController::class, 'index'])
        ->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])
        ->name('profile.edit');

    Route::patch('/profile', [ProfileController::class, 'update'])
        ->name('profile.update');

    Route::delete('/profile', [ProfileController::class, 'destroy'])
        ->name('profile.destroy');

    Route::post('/archives/{article}/comments', [CommentController::class, 'store'])
        ->name('comments.store');
    
});


// Halaman admin (harus login)
// ADMIN
Route::middleware(['auth', 'verified', 'admin'])->group(function () {

    Route::get('/admin/dashboard', [DashboardController::class, 'index'])
        ->name('admin.dashboard');

    Route::resource('articles', ArticleController::class);
    Route::resource('categories', CategoryController::class);

    Route::delete('/comments/{comment}', [CommentController::class, 'destroy'])
        ->name('comments.destroy');
});

require __DIR__ . '/auth.php';
