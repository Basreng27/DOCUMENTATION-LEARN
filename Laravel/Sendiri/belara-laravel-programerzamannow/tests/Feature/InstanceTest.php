<?php

namespace Tests\Feature;

use App\Data\Person;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class InstanceTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testInstance()
    {
        // sama seperti Singleton tpi dengan nilai yang sudah ada
        $person = new Person("Rayandra", "Wandi");
        $this->app->instance(Person::class, $person);

        $person1 = $this->app->make(Person::class); //return object person
        $person2 = $this->app->make(Person::class); //return object person

        self::assertEquals("Rayandra", $person1->firstName);
        self::assertEquals("Rayandra", $person2->firstName);
        self::assertSame($person, $person1);
        self::assertSame($person1, $person2);
    }
}
