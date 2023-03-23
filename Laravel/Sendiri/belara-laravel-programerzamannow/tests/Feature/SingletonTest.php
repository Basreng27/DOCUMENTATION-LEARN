<?php

namespace Tests\Feature;

use App\Data\Person;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class SingletonTest extends TestCase
{

    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testBind()
    {
        // dibuat sekali
        // sama seperti $this->app->make() yang membedakan ini mengharuskan passing parrameter
        $this->app->singleton(Person::class, function ($app) {
            return new Person("Rayandra", "Wandi");
        });

        $person1 = $this->app->make(Person::class); //new Person("Rayandra", "Wandi"); if not exists
        $person2 = $this->app->make(Person::class); // return existing;

        self::assertEquals('Rayandra', $person1->firstName);
        self::assertEquals('Wandi', $person2->lastName);
        self::assertSame($person1, $person2);
    }

    public function testSingletonProperties()
    {
        $helloServices = $this->app->make(HelloServices::class);

        self::assertSame("Hallo Wandi", $helloServices->hello("Wandi"));
    }

    public function testEmptg()
    {
        self::assertTrue(true);
    }
}
