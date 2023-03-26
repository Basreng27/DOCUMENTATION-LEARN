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

    public function testRouteParameter()
    {
        $this->get('/productss/1')
            ->assertSeeText('Product : 1');

        $this->get('/products/123/items/ABC')
            ->assertSeeText('Product : 123, Item : ABC');
    }

    public function testRouteParameterRegex()
    {
        $this->get('/categories/123456')
            ->assertSeeText('Categories : 123456');

        $this->get('/categories/salah')
            ->assertSeeText('404');
    }

    public function testRouteOptionalParameter()
    {
        $this->get('/users/123456')
            ->assertSeeText('User : 123456');

        $this->get('/users/')
            ->assertSeeText('User : 404');
    }
}
