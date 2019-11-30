<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Services\Contracts\ActivityLogServiceInterface;
use App\Services\ActivityLogService;

use App\Services\Contracts\BankServiceInterface;
use App\Services\BankService;

use App\Services\Contracts\GenderServiceInterface;
use App\Services\GenderService;

use App\Services\Contracts\OccupationServiceInterface;
use App\Services\OccupationService;

use App\Services\Contracts\ReligionServiceInterface;
use App\Services\ReligionService;

use App\Services\Contracts\RoleServiceInterface;
use App\Services\RoleService;

use App\Services\Contracts\StatusServiceInterface;
use App\Services\StatusService;

use App\Services\Contracts\TerbilangServiceInterface;
use App\Services\TerbilangService;

use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(ActivityLogServiceInterface::class, ActivityLogService::class);        
        $this->app->bind(BankServiceInterface::class, BankService::class);        
        $this->app->bind(GenderServiceInterface::class, GenderService::class);        
        $this->app->bind(OccupationServiceInterface::class, OccupationService::class);        
        $this->app->bind(ReligionServiceInterface::class, ReligionService::class);        
        $this->app->bind(RoleServiceInterface::class, RoleService::class);        
        $this->app->bind(StatusServiceInterface::class, StatusService::class);        
        $this->app->bind(TerbilangServiceInterface::class, TerbilangService::class);        
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Schema::defaultStringLength(191);
    }
}
