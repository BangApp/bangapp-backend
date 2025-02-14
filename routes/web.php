<?php

use App\Category;
use App\Post;
use App\Http\Controllers\ResetPasswordController;
use Illuminate\Support\Facades\Route;

Auth::routes();

// Route::get('/login', function() {
//     return response(['message' => 'Please login first'], 403);
// })->name('login');
Route::post('/posts', 'Api\PostsController@store')->name('store');
Route::delete('/posts/{post}', 'Api\PostsController@destroy')->name('destroy');
Route::get('/users', 'Api\ProfilesController@index');
Route::get('/users/{user}', 'Api\ProfilesController@edit')->name('users.edit');
Route::put('/users/{user}', 'Api\ProfilesController@update')->name('users.update');

Route::get('/', function () {

    return view('welcome');
})->name('welcome');
Route::get('/reset-password/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
Route::post('/update-password', [ResetPasswordController::class, 'reset'])->name('password.update');
Route::post('/post/bang/updates', [App\Http\Controllers\HomeController::class, 'postBangUpdates'])->name('postBangUpdates');

Route::any('/post/bang/inspiration', [App\Http\Controllers\HomeController::class, 'postBangInspiration'])->name('postBangInspiration');

Route::post('/post/bang/battle', [App\Http\Controllers\HomeController::class, 'postBangBattle'])->name('postBangBattle');


Route::post('/post/bang/thumbnail', [App\Http\Controllers\HomeController::class, 'postBangThumbnail'])->name('postBangThumbnail');


Route::get('/bangInspirationWeb', [App\Http\Controllers\HomeController::class, 'bangInspiration'])->name('bangInspirationWeb');

Route::get('/deleteAccount', [App\Http\Controllers\HomeController::class, 'deleteAccount'])->name('deleteAccount');


Route::get('/bangBattleWeb', [App\Http\Controllers\HomeController::class, 'bangBattleWeb'])->name('bangBattleWeb');

Route::get('/pinBattle/{id}', [App\Http\Controllers\HomeController::class, 'bangBattlePin'])->name('pin_bang_battle');

Route::get('edit_bang_battle/{id}', [App\Http\Controllers\HomeController::class, 'bangBattleEdit'])->name('edit_bang_battle');

Route::get('/delete_bang_battle/{id}', [App\Http\Controllers\HomeController::class, 'deleteBangBattle'])->name('delete_bang_battle');

Route::post('/update_bang_battle',[App\Http\Controllers\HomeController::class, 'updateBangBattle'])->name('updateBangBattle');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/reportedPost', [App\Http\Controllers\HomeController::class, 'reportedPost'])->name('reportedPost');

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'dashboard'])->name('dashboard');

Route::get('/users',[App\Http\Controllers\UserController::class, 'usersManage'] )->name('users');
