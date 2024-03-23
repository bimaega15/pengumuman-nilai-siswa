<?php

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

use Modules\Master\Http\Middleware\MiddlewareDataStatis;

Route::prefix('master')->middleware(['auth', 'authorization_route'])->group(function () {
    Route::get('/', 'MasterController@index');

    Route::group(['prefix' => 'dataStatis'], function () {
        Route::get('/', 'DataStatisController@index')->name('master.dataStatis.index');
        Route::get('/create', 'DataStatisController@create')->name('master.dataStatis.create');
        Route::post('/', 'DataStatisController@store')->name('master.dataStatis.store');
        Route::get('/{id}/edit', 'DataStatisController@edit')->name('master.dataStatis.edit');
        Route::put('/{id}', 'DataStatisController@update')->name('master.dataStatis.update');
        Route::delete('/{id}', 'DataStatisController@destroy')->name('master.dataStatis.destroy');
        Route::get('/parentStatis', 'DataStatisController@parentStatis')->name('master.dataStatis.parentStatis');
        Route::get('/migrasi', 'DataStatisController@migrasi')->name('master.dataStatis.migrasi');
    });

    Route::group(['prefix' => 'menu'], function () {
        Route::get('/', 'MenuController@index')->name('master.menu.index');
        Route::get('/create', 'MenuController@create')->name('master.menu.create');
        Route::post('/', 'MenuController@store')->name('master.menu.store');
        Route::get('/{id}/edit', 'MenuController@edit')->name('master.menu.edit');
        Route::put('/{id}', 'MenuController@update')->name('master.menu.update');
        Route::delete('/{id}', 'MenuController@destroy')->name('master.menu.destroy');
        Route::get('/renderTree', 'MenuController@renderTree')->name('master.menu.renderTree');
        Route::get('/dataTable', 'MenuController@dataTable')->name('master.menu.dataTable');
        Route::get('/sortAndNested', 'MenuController@sortAndNested')->name('master.menu.sortAndNested');
    });

    Route::resource('kelas', 'KelasController');
    Route::resource('siswa', 'SiswaController');
    Route::post('siswa/deleteAll', 'SiswaController@deleteAll')->name('siswa.deleteAll');
    Route::post('master/siswa/import/data', 'SiswaController@import')->name('siswa.import');
    Route::resource('nilaiSiswa', 'NilaiSiswaController');
});
