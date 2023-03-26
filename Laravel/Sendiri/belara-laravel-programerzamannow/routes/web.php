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

// Route Parameter
Route::get('/productss/{id}', function ($productId) {
    return "Product : " . $productId;
});
Route::get('/products/{product}/items/{item}', function ($productId, $itemId) {
    return "Product : " . $productId . ", Item : " . $itemId;
});
// aturan route, dengan kondisi misal id harus angka 0-9
Route::get('/categories/{id}', function ($categoryId) {
    return "Categories : $categoryId";
})->where('id', '[0-9]+');
// mengirim parameter optional, jad si parameter id boleh diisi atau tidakpun
Route::get('/users/{id?}', function (string $userId = '404') {
    return "User : $userId";
});

// Route Named
// jadi yang dipangil namanya
Route::get('/name/{id}', function ($nameId) {
    return "Name : " . $nameId;
})->name('nama');
Route::get('/name/{idnama}/kelas/{idkelas}', function ($nameId, $kelasId) {
    return "Name : $nameId, Kelas : $kelasId";
})->name('nama.kelas');
// redirect wajib mengirimkan parameter
Route::get('/produk/{id}', function ($id) {
    $link = route('product.detail', ['id' => $id]);
    return "Link $link";
});
Route::get('/produk-redirect/{id}', function ($id) {
    return redirect()->route('product.detail', ['id' => $id]);
});

// Route Controller
Route::get('/controller/hello', [
    \App\Http\Controllers\HelloController::class,
    'hello'
]);
// with param
Route::get('/controller/helloparameter/{name}', [
    \App\Http\Controllers\HelloController::class,
    'helloParameter'
]);
// request
Route::get('/controller/request', [
    \App\Http\Controllers\HelloController::class,
    'requestMethod'
]);

// input router
// get
Route::get('/input/hello', [
    \App\Http\Controllers\InputController::class,
    'input'
]);
// post
Route::post('/input/hello', [
    \App\Http\Controllers\InputController::class,
    'input'
]);
// nested
Route::post('/input/nested', [
    \App\Http\Controllers\InputController::class,
    'inputNested'
]);
