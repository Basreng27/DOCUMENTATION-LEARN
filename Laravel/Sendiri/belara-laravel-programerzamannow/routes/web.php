<?php

use App\Http\Controllers\FormController;
use App\Http\Middleware\VerifyCsrfToken;
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
// input type
Route::post('/input/type', [
    \App\Http\Controllers\InputController::class,
    'inputType'
]);
// input filter
Route::post('/input/filter/only', [
    \App\Http\Controllers\InputController::class,
    'filterOnly'
]);
Route::post('/input/filter/except', [
    \App\Http\Controllers\InputController::class,
    'filterExcept'
]);

// file upload
Route::post('/file/upload', [
    \App\Http\Controllers\UploadCOntroller::class,
    'upload'
]);

// response
Route::post('/response/hello', [
    \App\Http\Controllers\ResponseController::class,
    'response'
]);

// middleware
// Route::post('/middleware/api', function () {
//     return "OK";
// })->middleware(['contoh']);
// dinamis
Route::post('/middleware/api', function () {
    return "OK";
})->middleware(['contoh:RWM,401']);
// exclude
Route::post('/middleware/api', function () {
    return "OK";
})->middleware(['contoh:RWM,401'])
    // tidak akan di eksekusi middle ware csrf
    ->withoutMiddleware(VerifyCsrfToken::class);

// // form
// Route::get('/form', [
//     FormController::class,
//     'form'
// ]);

// Route::post('/form', [
//     FormController::class,
//     'submitForm'
// ]);

// route group
// prefix = awalan, prefix 'contoh', pnggil contoh.contoh
Route::prefix('/respon/type')
    ->group(function () {
        Route::get('/view', [\App\Http\Controllers\ResponseController::class, 'responseView']);
        Route::get('/json', [\App\Http\Controllers\ResponseController::class, 'responseJson']);
        Route::get('/file', [\App\Http\Controllers\ResponseController::class, 'responseFile']);
        Route::get('/download', [\App\Http\Controllers\ResponseController::class, 'responseDownload']);
    });
// route middleware
Route::middleware(['sample:PZN,401'])
    ->group(function () {
        Route::get('/middleware/api', function () {
            return "OK";
        });
    });
// route controller, membuat route untuk controller yang sama
Route::controller(FormController::class)
    ->group(function () {
        Route::get('/form', 'form');

        Route::post('/form', 'submitForm');
    });
// multiple route group
Route::middleware(['sample:PZN,401'])
    ->prefix('/middleware')
    // jika ada controllernya
    // ->controller('Controller')
    ->group(function () {
        Route::get('/api', function () {
            return "OK";
        });
    });


// Url current
// url()->curent() = medapat url saat ini tanpa query param
// url()->fuul() = medapat url saat ini dengan query param
Route::get('/redirect/named', function () {
    //    return route('redirect-hello', ['name' => 'Eko']);
    //    return url()->route('redirect-hello', ['name' => 'Eko']);
    return \Illuminate\Support\Facades\URL::route('redirect-hello', ['name' => 'Eko']);
});
Route::get('/url/action', function () {
    // return action([\App\Http\Controllers\FormController::class, 'form'], []);
    // return url()->action([\App\Http\Controllers\FormController::class, 'form'], []);
    return \Illuminate\Support\Facades\URL::action([\App\Http\Controllers\FormController::class, 'form'], []);
});
