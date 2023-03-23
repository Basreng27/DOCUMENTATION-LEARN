<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ViewTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testView()
    {
        $this->get('/viewGet')
            ->assertSeeText('Hello Wandi');
    }

    public function testViewNested()
    {
        $this->get('/hai')
            ->assertSeeText('Hai Wandi');
    }

    // testing tanpa membuat codingan route
    public function testViewWithoutRoute()
    {
        $this->view('hello', ['name' => 'Wandi Marselana'])
            ->assertSeeText('Hello Wandi Marselana');
    }
}
