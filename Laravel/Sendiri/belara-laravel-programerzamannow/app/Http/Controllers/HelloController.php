<?php

namespace App\Http\Controllers;

use App\Services\HelloServices;
use Illuminate\Http\Request;

class HelloController extends Controller
{
    private HelloServices $helloServices;

    public function __construct(HelloServices $helloServices)
    {
        $this->helloServices = $helloServices;
    }

    public function hello(): string
    {
        return "Hello World";
    }

    public function helloParameter(string $name): string
    {
        return $this->helloServices->hello($name);
    }

    // untuk request seperti get dan post
    /*
        Request Path

        $request->path() = untuk mendapat path atau lokasi
        $request->url() = untuk mendapat url tanpa parameter
        $request->fullUrl() = untuk mendapat semua url
    */
    public function requests(Request $request, string $name): string
    {
        return $this->helloServices->hello($name);
    }

    public function requestMethod(Request $request): string
    {
        return $request->path() . PHP_EOL .
            $request->url() . PHP_EOL .
            $request->fullUrl() . PHP_EOL .
            $request->method() . PHP_EOL .
            $request->header('Accept');
    }
}
