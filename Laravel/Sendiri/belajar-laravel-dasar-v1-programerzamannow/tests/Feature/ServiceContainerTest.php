<?php

namespace Tests\Feature;

use App\Data\Foo;
use App\Services\HelloService;
use App\Services\HelloServicesIndonesia;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

use function PHPUnit\Framework\assertEquals;
use function PHPUnit\Framework\assertNotEquals;

class ServiceContainerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        // sama seperti new Foo()
        $foo1 = $this->app->make(Foo::class);
        $foo2 = $this->app->make(Foo::class);

        self::assertEquals('Foo', $foo1->foo());
        self::assertEquals('Foo', $foo2->foo());
        self::assertNotSame($foo1, $foo2);
    }

    public function testHelloServices()
    {
        $this->app->singleton(HelloService::class, HelloServicesIndonesia::class);

        $serviceHello = $this->app->make(HelloService::class);

        self::assertEquals('Hallo Wandi', $serviceHello->hello('wandi'));
    }
}
