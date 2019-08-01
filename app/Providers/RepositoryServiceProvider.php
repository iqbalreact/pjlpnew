<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Repository\Contracts\AccountRepoInterface;
use App\Repository\AccountRepo;

use App\Repository\Contracts\ActivityRepoInterface;
use App\Repository\ActivityRepo;

use App\Repository\Contracts\DatatablesRepoInterface;
use App\Repository\DatatablesRepo;

use App\Repository\Contracts\EmployeeRepoInterface;
use App\Repository\EmployeeRepo;

use App\Repository\Contracts\FunctionaryRepoInterface;
use App\Repository\FunctionaryRepo;

use App\Repository\Contracts\OccupationRepoInterface;
use App\Repository\OccupationRepo;

use App\Repository\Contracts\PositionRepoInterface;
use App\Repository\PositionRepo;

use App\Repository\Contracts\PositionCategoryRepoInterface;
use App\Repository\PositionCategoryRepo;

use App\Repository\Contracts\ProgramRepoInterface;
use App\Repository\ProgramRepo;

use App\Repository\Contracts\SkpdRepoInterface;
use App\Repository\SkpdRepo;

use App\Repository\Contracts\WorkPackageRepoInterface;
use App\Repository\WorkPackageRepo;

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
        $this->app->bind(ActivityRepoInterface::class, ActivityRepo::class);
        $this->app->bind(AccountRepoInterface::class, AccountRepo::class);
        $this->app->bind(DatatablesRepoInterface::class, DatatablesRepo::class);
        $this->app->bind(EmployeeRepoInterface::class, EmployeeRepo::class);    
        $this->app->bind(FunctionaryRepoInterface::class, FunctionaryRepo::class);    
        $this->app->bind(OccupationRepoInterface::class, OccupationRepo::class);    
        $this->app->bind(ProgramRepoInterface::class, ProgramRepo::class);    
        $this->app->bind(PositionRepoInterface::class, PositionRepo::class);    
        $this->app->bind(PositionCategoryRepoInterface::class, PositionCategoryRepo::class);    
        $this->app->bind(SkpdRepoInterface::class, SkpdRepo::class);    
        $this->app->bind(WorkPackageRepoInterface::class, WorkPackageRepo::class);    
    }
}