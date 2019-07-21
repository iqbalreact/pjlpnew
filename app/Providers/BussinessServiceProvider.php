<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Bussiness\DatatablesBuss;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\EmployeeBuss;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\SkpdBuss;

class BussinessServiceProvider extends ServiceProvider
{
	/**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(DatatablesBussInterface::class, DatatablesBuss::class);
        $this->app->bind(EmployeeBussInterface::class, EmployeeBuss::class);
        $this->app->bind(SkpdBussInterface::class, SkpdBuss::class);
    }
}