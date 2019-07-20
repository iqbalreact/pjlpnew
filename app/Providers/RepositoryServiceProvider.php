<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Repository\Contracts\DatatablesRepoInterface;
use App\Repository\DatatablesRepo;

use App\Repository\Contracts\EmployeeRepoInterface;
use App\Repository\EmployeeRepo;

class RepositoryServiceProvider extends ServiceProvider
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
        $this->app->bind(DatatablesRepoInterface::class, DatatablesRepo::class);
        $this->app->bind(EmployeeRepoInterface::class, EmployeeRepo::class);    
    }
}