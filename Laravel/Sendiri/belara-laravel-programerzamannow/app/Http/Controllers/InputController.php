<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InputController extends Controller
{
    public function input(Request $request)
    {
        // untuk inputnya
        $name = $request->input('name');

        return "Hello $name";
    }

    public function inputNested(Request $request)
    {
        // untuk inputnya
        $firstName = $request->input('name.first');
        $lastName = $request->input('name.last');

        return "Hello $firstName $lastName";
    }
}
