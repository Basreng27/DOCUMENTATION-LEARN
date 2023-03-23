<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

/*
    contoh route

    Route::get(uri, callback)
    Route::post(uri, callback)
    Route::put(uri, callback)
    Route::patch(uri, callback)
    Route::delete(uri, callback)
    Route::options(uri, callback)
    Route::redirect(darimana, kemana)
    Route::fallback(closure);
    Route::view(uri, template, array);
*/

Route::get('/rwm', function () {
    return "Hallo Rayandra Wandi Marselana";
});

Route::redirect('/yt', '/rwm');

// fallback route = untuk mengakses halam tidak ada diarahkan kesini
Route::fallback(function () {
    return "404";
});

// langsung menampilkan di route ke view
Route::view('/view', 'hello', ['name' => 'Rayandra Wandi Marselana']);
Route::get('/viewGet', function () {
    return view('hello', ['name' => 'Wandi']);
});
// jika file view di dalam folder, menyambungkannya menggunakan . bukan /
Route::get('/hai', function () {
    return view('hello.hai', ['name' => 'Wandi']);
});
