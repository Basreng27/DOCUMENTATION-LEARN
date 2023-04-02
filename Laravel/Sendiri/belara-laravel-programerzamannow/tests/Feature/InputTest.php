<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class InputTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testInput()
    {
        // get
        // $this->get('/input/hello?name=Wandi')
        //     ->assertSeeText("Hello Wandi");

        // post
        $this->post('/input/hello', ['name' => 'Wandi'])
            ->assertSeeText("Hello Wandi");
    }

    public function testInputNested()
    {
        $this->post('/input/nested', [
            'name' => [
                'first' => 'Rayandra',
                'last' => 'Wandi',
            ]
        ])
            ->assertSeeText("Hello Rayandra Wandi");
    }

    public function testInputType()
    {
        $this->post('/input/type', [
            'name' => 'Wandi',
            'jk' => 'true',
            'born' => '2001-03-27',
        ])
            ->assertSeeText("Wandi")
            ->assertSeeText('true')
            ->assertSeeText('2001-03-27');
    }

    public function testFilterOnly()
    {
        $this->post('/input/filter/only', [
            'name' => [
                "first" => "Rayandra",
                "last" => "Wandi",
                "middle" => "Marselana"
            ]
        ])
            ->assertSeeText("Wandi")
            ->assertSeeText('Rayandra')
            ->assertDontSeeText('Marselana');
    }

    public function testFilterExcept()
    {
        $this->post('/input/filter/except', [
            'username' => "wandi",
            'admin' => "true",
            'pw' => "rahasia"
        ])
            ->assertSeeText("wandi")
            ->assertSeeText('rahasia')
            ->assertDontSeeText('admin');
    }
}
