<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\ActivityBuss;

use App\Bussiness\Contracts\AccountBussInterface;
use App\Bussiness\AccountBuss;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\ContractBuss;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Bussiness\DatatablesBuss;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\EmployeeBuss;

use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Bussiness\FunctionaryBuss;

use App\Bussiness\Contracts\LocationBussInterface;
use App\Bussiness\LocationBuss;

use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\OccupationBuss;

use App\Bussiness\Contracts\PositionBussInterface;
use App\Bussiness\PositionBuss;

use App\Bussiness\Contracts\PositionCategoryBussInterface;
use App\Bussiness\PositionCategoryBuss;

use App\Bussiness\Contracts\ProgramBussInterface;
use App\Bussiness\ProgramBuss;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\SkpdBuss;

use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Bussiness\WorkPackageBuss;

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
        $this->app->bind(AccountBussInterface::class, AccountBuss::class);
        $this->app->bind(ActivityBussInterface::class, ActivityBuss::class);
        $this->app->bind(ContractBussInterface::class, ContractBuss::class);
        $this->app->bind(DatatablesBussInterface::class, DatatablesBuss::class);
        $this->app->bind(EmployeeBussInterface::class, EmployeeBuss::class);
        $this->app->bind(FunctionaryBussInterface::class, FunctionaryBuss::class);
        $this->app->bind(LocationBussInterface::class, LocationBuss::class);
        $this->app->bind(OccupationBussInterface::class, OccupationBuss::class);
        $this->app->bind(PositionBussInterface::class, PositionBuss::class);
        $this->app->bind(PositionCategoryBussInterface::class, PositionCategoryBuss::class);
        $this->app->bind(ProgramBussInterface::class, ProgramBuss::class);
        $this->app->bind(SkpdBussInterface::class, SkpdBuss::class);
        $this->app->bind(WorkPackageBussInterface::class, WorkPackageBuss::class);
    }
}