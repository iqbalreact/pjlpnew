<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\ActivityBuss;

use App\Bussiness\Contracts\AccountBussInterface;
use App\Bussiness\AccountBuss;

use App\Bussiness\Contracts\AssessmentBussInterface;
use App\Bussiness\AssessmentBuss;

use App\Bussiness\Contracts\AssessmentDatatablesBussInterface;
use App\Bussiness\AssessmentDatatablesBuss;

use App\Bussiness\Contracts\AttendanceBussInterface;
use App\Bussiness\AttendanceBuss;

use App\Bussiness\Contracts\AttendanceDatatablesBussInterface;
use App\Bussiness\AttendanceDatatablesBuss;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\ContractBuss;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Bussiness\DatatablesBuss;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\EmployeeBuss;

use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Bussiness\FunctionaryBuss;

use App\Bussiness\Contracts\LeaveEmployeeBussInterface;
use App\Bussiness\LeaveEmployeeBuss;

use App\Bussiness\Contracts\LocationBussInterface;
use App\Bussiness\LocationBuss;

use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\OccupationBuss;

use App\Bussiness\Contracts\PaymentLetterBussInterface;
use App\Bussiness\PaymentLetterBuss;

use App\Bussiness\Contracts\PayrollBussInterface;
use App\Bussiness\PayrollBuss;

use App\Bussiness\Contracts\PayrollDatatablesBussInterface;
use App\Bussiness\PayrollDatatablesBuss;

use App\Bussiness\Contracts\PositionBussInterface;
use App\Bussiness\PositionBuss;

use App\Bussiness\Contracts\PositionCategoryBussInterface;
use App\Bussiness\PositionCategoryBuss;

use App\Bussiness\Contracts\ProgramBussInterface;
use App\Bussiness\ProgramBuss;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\SkpdBuss;

use App\Bussiness\Contracts\SalaryComponentBussInterface;
use App\Bussiness\SalaryComponentBuss;

use App\Bussiness\Contracts\StartWorkingLetterBussInterface;
use App\Bussiness\StartWorkingLetterBuss;

use App\Bussiness\Contracts\WorkAdministrationBussInterface;
use App\Bussiness\WorkAdministrationBuss;

use App\Bussiness\Contracts\WorkDayBussInterface;
use App\Bussiness\WorkDayBuss;

use App\Bussiness\Contracts\WorkHandoverBussInterface;
use App\Bussiness\WorkHandoverBuss;

use App\Bussiness\Contracts\WorkHandoverPpkomBussInterface;
use App\Bussiness\WorkHandoverPpkomBuss;

use App\Bussiness\Contracts\WorkInspectionBussInterface;
use App\Bussiness\WorkInspectionBuss;

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
        $this->app->bind(AssessmentBussInterface::class, AssessmentBuss::class);
        $this->app->bind(AssessmentDatatablesBussInterface::class, AssessmentDatatablesBuss::class);
        $this->app->bind(AttendanceBussInterface::class, AttendanceBuss::class);
        $this->app->bind(AttendanceDatatablesBussInterface::class, AttendanceDatatablesBuss::class);
        $this->app->bind(ContractBussInterface::class, ContractBuss::class);
        $this->app->bind(DatatablesBussInterface::class, DatatablesBuss::class);
        $this->app->bind(EmployeeBussInterface::class, EmployeeBuss::class);
        $this->app->bind(FunctionaryBussInterface::class, FunctionaryBuss::class);
        $this->app->bind(LeaveEmployeeBussInterface::class, LeaveEmployeeBuss::class);
        $this->app->bind(LocationBussInterface::class, LocationBuss::class);
        $this->app->bind(OccupationBussInterface::class, OccupationBuss::class);
        $this->app->bind(PaymentLetterBussInterface::class, PaymentLetterBuss::class);
        $this->app->bind(PayrollBussInterface::class, PayrollBuss::class);
        $this->app->bind(PayrollDatatablesBussInterface::class, PayrollDatatablesBuss::class);
        $this->app->bind(PositionBussInterface::class, PositionBuss::class);
        $this->app->bind(PositionCategoryBussInterface::class, PositionCategoryBuss::class);
        $this->app->bind(ProgramBussInterface::class, ProgramBuss::class);
        $this->app->bind(SalaryComponentBussInterface::class, SalaryComponentBuss::class);
        $this->app->bind(SkpdBussInterface::class, SkpdBuss::class);
        $this->app->bind(StartWorkingLetterBussInterface::class, StartWorkingLetterBuss::class);
        $this->app->bind(WorkAdministrationBussInterface::class, WorkAdministrationBuss::class);
        $this->app->bind(WorkDayBussInterface::class, WorkDayBuss::class);
        $this->app->bind(WorkHandoverBussInterface::class, WorkHandoverBuss::class);
        $this->app->bind(WorkHandoverPpkomBussInterface::class, WorkHandoverPpkomBuss::class);
        $this->app->bind(WorkInspectionBussInterface::class, WorkInspectionBuss::class);
        $this->app->bind(WorkPackageBussInterface::class, WorkPackageBuss::class);
    }
}