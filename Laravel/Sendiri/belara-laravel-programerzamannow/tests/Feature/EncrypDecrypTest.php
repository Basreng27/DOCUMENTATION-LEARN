<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Crypt;
use Tests\TestCase;

class EncrypDecrypTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testEncrypt()
    {
        // diubah
        $encrypt = Crypt::encrypt("Rayandra");
        // mengembalikan yang diubah
        $decrypt = Crypt::decrypt($encrypt);

        self::assertEquals("Rayandra", $decrypt);
    }
}
