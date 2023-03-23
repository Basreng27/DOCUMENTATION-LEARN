<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class RoutingTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testBasicRouting()
    {
        // testing route get
        $this->get("/rwm")
            ->assertStatus(200)
            ->assertSeeText('Hallo Rayandra Wandi Marselana');
    }

    public function testRedirect()
    {
        $this->get("/yt")
            ->assertRedirect("/rwm");
    }

    public function testFallback()
    {
        // jika akses ke url tidak ada maka akan masuk ke fallback
        $this->get("/tidakada")
            ->assertSeeText("404");
    }
}
