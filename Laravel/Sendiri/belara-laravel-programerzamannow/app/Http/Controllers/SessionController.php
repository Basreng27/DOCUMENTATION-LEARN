<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SessionController extends Controller
{
    /*
        Method Session
        -> Menyimpan data dengan key dan value
        put(key,value)

        -> Menambah data ke array dengan key dan value
        push(key,value)

        -> Mengambil data di array, dan menghapusnya
        pull(key,value)

        -> Menaikkan value session
        increment(key,increment)

        -> Menurunkan value session
        decrement(key,decrement)

        -> menghapus data session
        forget(key,value)

        -> menghapus semua data session
        flush()

        -> menghapus semua data session dan membuat baru
        invaldate()

        Mengambil data session
        -> mengambil data dengan key
        get(key,default)

        -> mengambil semua data
        all()

        -> mengecek data session
        has(key)

        -> mengecek apakah data tidak ada di session
        missing(key)
    */
    public function createSession(Request $request)
    {
        $request->session()->put('userId', 'Wandi');
        $request->session()->put('isMember', 'true');

        return "OK";
    }
}
