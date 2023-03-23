<?php

namespace App\Services;

interface HelloServices
{
    // : strig = balikan/return harus string
    public function hello(string $name): string;
}
