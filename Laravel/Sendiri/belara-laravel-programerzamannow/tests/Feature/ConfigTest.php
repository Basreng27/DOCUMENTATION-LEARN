<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ConfigTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testConfig()
    {
        // mengambil data pada file contoh di folder coonfig
        $firstName = config('contoh.name.first');
        $LastName = config('contoh.name.last');
        $email = config('contoh.email');
        $web = config('contoh.web');

        self::assertEquals('Rayandra', $firstName);
        self::assertEquals('Wandi', $LastName);
        self::assertEquals('mwandirayandra@gmail.com', $email);
        self::assertEquals('webwandi.com', $web);
    }
}
