<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class EnvirontmentTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testGetEnv()
    {
        // mengambil di file .env
        $belajar = env('Belajar');

        // harus sama dengan Laravel
        self::assertEquals('Laravel', $belajar);
    }

    public function testDefaultEnv()
    {
        // jika author kosong di .env maka menggunakan wandi
        $author = env('AUTHOR', 'Wandi');

        self::assertEquals('Wandi', $author);
    }
}
