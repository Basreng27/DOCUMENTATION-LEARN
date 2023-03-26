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
}
