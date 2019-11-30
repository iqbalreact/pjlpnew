<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Repository\Contracts\AccountRepoInterface;
use App\Repository\AccountRepo;

use App\Repository\Contracts\ActivityRepoInterface;
use App\Repository\ActivityRepo;

use App\Repository\Contracts\AssessmentRepoInterface;
use App\Repository\AssessmentRepo;

use App\Repository\Contracts\AttendanceRepoInterface;
use App\Repository\AttendanceRepo;

use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\ContractRepo;

use App\Repository\Contracts\DatatablesRepoInterface;
use App\Repository\DatatablesRepo;

use App\Repository\Contracts\EmployeeRepoInterface;
use App\Repository\EmployeeRepo;

use App\Repository\Contracts\FunctionaryRepoInterface;
use App\Repository\FunctionaryRepo;

use App\Repository\Contracts\LeaveEmployeeRepoInterface;
use App\Repository\LeaveEmployeeRepo;

use App\Repository\Contracts\LocationRepoInterface;
use App\Repository\LocationRepo;

use App\Repository\Contracts\OccupationRepoInterface;
use App\Repository\OccupationRepo;

use App\Repository\Contracts\PaymentLetterRepoInterface;
use App\Repository\PaymentLetterRepo;

use App\Repository\Contracts\PayrollRepoInterface;
use App\Repository\PayrollRepo;

use App\Repository\Contracts\PositionRepoInterface;
use App\Repository\PositionRepo;

use App\Repository\Contracts\PositionCategoryRepoInterface;
use App\Repository\PositionCategoryRepo;

use App\Repository\Contracts\ProgramRepoInterface;
use App\Repository\ProgramRepo;

use App\Repository\Contracts\SalaryComponentRepoInterface;
use App\Repository\SalaryComponentRepo;

use App\Repository\Contracts\SkpdRepoInterface;
use App\Repository\SkpdRepo;

use App\Repository\Contracts\StartWorkingLetterRepoInterface;
use App\Repository\StartWorkingLetterRepo;

use App\Repository\Contracts\WorkPackageRepoInterface;
use App\Repository\WorkPackageRepo;

use App\Repository\Contracts\WorkDayRepoInterface;
use App\Repository\WorkDayRepo;

use App\Repository\Contracts\WorkHandoverRepoInterface;
use App\Repository\WorkHandoverRepo;

use App\Repository\Contracts\WorkHandoverPpkomRepoInterface;
use App\Repository\WorkHandoverPpkomRepo;

use App\Repository\Contracts\WorkInspectionRepoInterface;
use App\Repository\WorkInspectionRepo;

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
        $this->app->bind(AssessmentRepoInterface::class, AssessmentRepo::class);
        $this->app->bind(AttendanceRepoInterface::class, AttendanceRepo::class);
        $this->app->bind(ContractRepoInterface::class, ContractRepo::class);
        $this->app->bind(DatatablesRepoInterface::class, DatatablesRepo::class);
        $this->app->bind(EmployeeRepoInterface::class, EmployeeRepo::class);    
        $this->app->bind(FunctionaryRepoInterface::class, FunctionaryRepo::class);    
        $this->app->bind(LeaveEmployeeRepoInterface::class, LeaveEmployeeRepo::class);    
        $this->app->bind(LocationRepoInterface::class, LocationRepo::class);    
        $this->app->bind(OccupationRepoInterface::class, OccupationRepo::class);    
        $this->app->bind(PaymentLetterRepoInterface::class, PaymentLetterRepo::class);    
        $this->app->bind(PayrollRepoInterface::class, PayrollRepo::class);    
        $this->app->bind(ProgramRepoInterface::class, ProgramRepo::class);    
        $this->app->bind(PositionRepoInterface::class, PositionRepo::class);    
        $this->app->bind(PositionCategoryRepoInterface::class, PositionCategoryRepo::class);    
        $this->app->bind(SalaryComponentRepoInterface::class, SalaryComponentRepo::class);    
        $this->app->bind(SkpdRepoInterface::class, SkpdRepo::class);    
        $this->app->bind(StartWorkingLetterRepoInterface::class, StartWorkingLetterRepo::class);    
        $this->app->bind(WorkDayRepoInterface::class, WorkDayRepo::class);    
        $this->app->bind(WorkPackageRepoInterface::class, WorkPackageRepo::class);    
        $this->app->bind(WorkHandoverRepoInterface::class, WorkHandoverRepo::class);    
        $this->app->bind(WorkHandoverPpkomRepoInterface::class, WorkHandoverPpkomRepo::class);    
        $this->app->bind(WorkInspectionRepoInterface::class, WorkInspectionRepo::class);    
    }
}