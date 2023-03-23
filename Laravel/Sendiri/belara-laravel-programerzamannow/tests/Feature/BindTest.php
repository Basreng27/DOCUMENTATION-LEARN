<?php

namespace Tests\Feature;

use App\Data\Person;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class BindTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testBind()
    {
        // dibuat terusmenerus
        // sama seperti $this->app->make() yang membedakan ini mengharuskan passing parrameter
        $this->app->bind(Person::class, function ($app) {
            return new Person("Rayandra", "Wandi");
        });

        $person1 = $this->app->make(Person::class); // closure() //new Person("Rayandra", "Wandi");
        $person2 = $this->app->make(Person::class); // closure() //new Person("Rayandra", "Wandi");

        self::assertEquals('Rayandra', $person1->firstName);
        self::assertEquals('Wandi', $person2->lastName);
        self::assertNotSame($person1, $person2);
    }
}
