<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ResponseTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testResponse()
    {
        $this->get('/response/hello')
            ->assertStatus(200)
            ->assertSeeText("Hello Response");
    }
}
