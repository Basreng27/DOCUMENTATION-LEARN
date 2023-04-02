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

    // Input Type
    public function inputType(Request $request)
    {
        $name = $request->input('name');
        $jk = $request->boolean('jk');
        $born = $request->date('born', 'Y-m-d');

        return json_encode([
            "name" => $name,
            "jk" => $jk,
            "born" => $born->format('Y-m-d'),
        ]);
    }

    // filter request input
    // $request->only([$key1,$key2]); //maka yang di terima haya key dari parameter 1 dan 2
    public function filterOnly(Request $request)
    {
        $name = $request->only(['name.first', 'name.last']);

        return json_encode($name);
    }
    // $request->except([$key1,$key2]); //maka yang di terima haya key dari parameter 3 dst
    public function filterExcept(Request $request)
    {
        $user = $request->except(['admin']);

        return json_encode($user);
    }
}
