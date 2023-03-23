<?php

namespace Tests\Feature;

use App\Data\Bar;
use App\Data\Foo;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class DepedencyTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testDependency()
    {
        $foo = new Foo;
        // melakukan injection dari foo ke bar
        $bar = new Bar($foo);

        self::assertEquals('Foo and Bar', $bar->bar());
    }

    public function testDepedencyInjection()
    {
        $this->app->singleton(Foo::class, function ($app) {
            return new Foo();
        });

        // mengambil data yang atas
        $this->app->singleton(Bar::class, function ($app) {
            $foo = $app->make(Foo::class);
            return new Bar($foo);
        });

        $foo = $this->app->make(Foo::class);
        $bar = $this->app->make(Bar::class);

        self::assertNotSame($foo, $bar);
    }
}
