<?php

namespace App\Providers;

use App\Data\Bar;
use App\Data\Foo;
use App\Services\HelloService;
use App\Services\HelloServices;
use App\Services\HelloServicesIndonesia;
use Illuminate\Contracts\Support\DeferrableProvider;
use Illuminate\Support\ServiceProvider;

class FooBarServiceProfider extends ServiceProvider implements DeferrableProvider
{
    // singletons properties
    public array $singletons = [
        HelloService::class => HelloServicesIndonesia::class
    ];

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        // untuk mendaftarkan dependency yang dibutuhkan

        // meregistratsi class Foo
        $this->app->singleton(Foo::class, function ($app) {
            return new Foo();
        });

        // meregistratsi class bAR
        $this->app->singleton(Bar::class, function ($app) {
            return new Bar($app->make(Foo::class));
        });

        // jangan lupa menambahakan/mendaftarakan di file app/config/app.php cari povider
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // membuat hal apapun setelah mendaftarkan dependency
    }

    // deklarasi jikaprovider di pakai atau tidak jadi tidak meload semua provider di awal
    public function provides()
    {
        return [HelloServices::class, Foo::class, Bar::class];
    }
}
