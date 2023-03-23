<?php

namespace App\Services;

class HelloServicesIndonesia implements HelloService
{
    public function hello(string $name): string
    {
        return "Hallo $name";
    }
}
