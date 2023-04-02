<?php

namespace Tests\Feature;

use GuzzleHttp\Psr7\UploadedFile;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\UploadedFile as HttpUploadedFile;
use Tests\TestCase;

class UploadTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testupload()
    {
        $image = HttpUploadedFile::fake()->image("wnadi.png");

        $this->post('/file/upload', [
            'picture' => $image
        ])->assertSeeText("OK : wandi.png");
    }
}
