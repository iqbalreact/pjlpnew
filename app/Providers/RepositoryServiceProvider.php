<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Repository\Contracts\AccountRepoInterface;
use App\Repository\AccountRepo;

use App\Repository\Contracts\DatatablesRepoInterface;
use App\Repository\DatatablesRepo;

use App\Repository\Contracts\EmployeeRepoInterface;
use App\Repository\EmployeeRepo;

use App\Repository\Contracts\SkpdRepoInterface;
use App\Repository\SkpdRepo;

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
        $this->app->bind(AccountRepoInterface::class, AccountRepo::class);
        $this->app->bind(DatatablesRepoInterface::class, DatatablesRepo::class);
        $this->app->bind(EmployeeRepoInterface::class, EmployeeRepo::class);    
        $this->app->bind(SkpdRepoInterface::class, SkpdRepo::class);    
    }
}