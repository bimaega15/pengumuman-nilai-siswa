<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\MyProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('home.index');


Route::middleware('auth')->group(function () {
});
Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
require __DIR__ . '/auth.php';

Route::group(['middleware' => ['auth']], function () {
    Route::get('/myProfile', [MyProfileController::class, 'index'])->name('myProfile.index');
    Route::get('/myProfile/{id}/edit', [MyProfileController::class, 'edit'])->name('myProfile.edit');
    Route::put('/myProfile/{id}/update', [MyProfileController::class, 'update'])->name('myProfile.update');
});
