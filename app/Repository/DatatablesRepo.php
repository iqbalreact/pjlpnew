<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use Spatie\Activitylog\Models\Activity as ActivityLog;

use App\Models\Activity; 
use App\Models\Employee;
use App\Models\Contract;
use App\Models\Functionary;
use App\Models\HistoryLeaveEmployee;
use App\Models\Location;
use App\Models\Occupation;
use App\Models\PaymentLetter;
use App\Models\Position;
use App\Models\PositionCategory;
use App\Models\Program;
use App\Models\RecapAttendance;
use App\Models\SalaryComponent;
use App\Models\Skpd;
use App\Models\User;
use App\Models\WorkDay;
use App\Models\WorkHandover;
use App\Models\WorkInspection;
use App\Models\WorkPackage;

use Carbon\Carbon;

class DatatablesRepo implements DatatablesRepoInterface
{
    public function fetchAccountDatas(Request $request)
    {
    	$datas = User::query();

        return $datas;
    }

    public function fetchActivityDatas(Request $request)
    {
        $datas = Activity::query();

        if(!is_null($request->program_id)) {
            $datas->where('program_id', $request->program_id);
        }

        $datas->with('program');

        return $datas;
    }

    public function fetchActivityLog(Request $request)
    {
        $datas = ActivityLog::query();

        if(!is_null($request->models)) {
            $datas->where('subject_type', $request->models);
        }

        if(!is_null($request->subject_id)) {
            $datas->where('subject_id', $request->subject_id);
        }

        if(!is_null($request->causer_id)) {
            $datas->where('causer_id', $request->causer_id);
        }

        $datas->with('subject', 'causer');

        return $datas;
    }

    public function fetchAssessmentData(Request $request)
    {
        $datas = Contract::with(['employee' => function($q) use ($request) {
                            $q->with(['assessments' => function ($q) use ($request) {
                                $q->where('work_package_id', $request->workPackageId)
                                ->where('month', Carbon::parse($request->date)->format('m'))
                                ->where('year', Carbon::parse($request->date)->format('Y'));
                            }]);
                        }])
                        ->where('status', 'active')
                        ->where('work_package_id', $request->workPackageId);

        return $datas;
    }

    public function fetchAttendanceData(Request $request)
    {
        $datas = Contract::where('status', 'active')
                        ->where('work_package_id', $request->workPackageId)
                        ->with(['employee' => function($q) use ($request) {
                            $q->with(['attendances' => function ($q) use ($request) {
                                $q->where('work_package_id', $request->workPackageId)
                                ->where('date', Carbon::parse($request->date));
                            }]);
                        }]);
                        
                        
        return $datas;
    }

    public function fetchContractIndexDatas(Request $request)
    {
        $datas = WorkPackage::query();

        if (!is_null($request->programId)) {
            $datas->whereHas('activity', function($q) use ($request) {
                $q->where('program_id', $request->programId);
            });
        }

        if (!is_null($request->activityId)) {
            $datas->where('activity_id', $request->programId);
        }

        if (!is_null($request->workPackageId)) {
            $datas->where('id', $request->workPackageId);
        }

        $datas->with('activity.program')
            ->withCount('contracts');

        return $datas;
    }

    public function fetchContractDetailDatas(Request $request)
    {
        $datas          = Contract::query();
        $status         = $request->status;
        $workPackageId  = $request->work_package_id;
        $year           = $request->year;

        if (!empty($workPackageId)) {
            $datas->where('work_package_id', $workPackageId);
        }

        if (!empty($status)) {
            $datas->where('status', $status);
        }

        if (!empty($year)) {
            $datas->whereYear('start_date', $year);
        }

        $datas->with('position', 'location', 'employee');

        return $datas;
    }

    public function fetchEmployeeDatas(Request $request)
    {
        $datas = Employee::query();
        
        if (!is_null($request->skpdId)) {
            $datas->where('skpd_id', $request->skpdId);
        }

        $datas->with('activeContracts.position');

        return $datas;
    }

    public function fetchFunctionaryDatas(Request $request)
    {
    	$datas = Functionary::query();

        return $datas;
    }

    public function fetchHistoryLeaveEmployeeDatas(Request $request)
    {
        $datas = HistoryLeaveEmployee::query();
        
        $datas->with('employee');

        return $datas;
    }

    public function fetchLocationDatas(Request $request)
    {
        $datas = Location::query();
        
        $datas->with('skpd');

        return $datas;
    }

    public function fetchOccupationDatas(Request $request)
    {
        $datas = Occupation::query();
        
        $datas->with('functionary', 'skpd');

        return $datas;
    }

    public function fetchPayrollData(Request $request)
    {
        $datas = Contract::with(['employee' => function($q) use ($request) {
                    $q->with(['assessments' => function ($q) use ($request) {
                        $q->where('work_package_id', $request->workPackageId)
                        ->where('month', Carbon::parse($request->date)->format('m'))
                        ->where('year', Carbon::parse($request->date)->format('Y'));
                    }])
                    ->with(['recapAttendances' => function ($q) use ($request) {
                        $q->where('work_package_id', $request->workPackageId)
                        ->where('month', Carbon::parse($request->date)->format('m'))
                        ->where('year', Carbon::parse($request->date)->format('Y'));
                    }]);
                }])
                ->with(['payrolls' => function ($q) use ($request) {
                    $q->where('work_package_id', $request->workPackageId)
                    ->where('month', Carbon::parse($request->date)->format('m'))
                    ->where('year', Carbon::parse($request->date)->format('Y'));
                }])
                ->where('status', 'active')
                ->where('work_package_id', $request->workPackageId);

        return $datas;
    }

    public function fetchPaymentLetterDatas(Request $request)
    {
        $datas = PaymentLetter::query();

        $datas->with('employee', 'contract.position');

        return $datas;
    }

    public function fetchPositionDatas(Request $request)
    {
    	$datas = Position::query();

        $datas->with('positionCategory');

        return $datas;
    }

    public function fetchPositionCategoryDatas(Request $request)
    {
    	$datas = PositionCategory::query();

        return $datas;
    }

    public function fetchProgramDatas(Request $request)
    {
        $datas = Program::query();

        if(!is_null($request->skpd_id)) {
            $datas->where('skpd_id', $request->skpd_id);
        }

        $datas->with('skpd');

        return $datas;
    }

    public function fetchSalaryComponentDatas(Request $request)
    {
    	$datas = SalaryComponent::query();

        return $datas;
    }

    public function fetchSkpdDatas(Request $request)
    {
    	$datas = Skpd::query();

        return $datas;
    }

    public function fetchWorkDayDatas(Request $request)
    {
        $datas = WorkDay::query();

        return $datas;
    }

    public function fetchWorkHandoverDatas(Request $request)
    {
        $datas = WorkHandover::query();

        $datas->with('employee', 'contract.position');

        return $datas;
    }

    public function fetchWorkInspectionDatas(Request $request)
    {
        $datas = WorkInspection::query();

        $datas->with('employee', 'contract.position');

        return $datas;
    }

    public function fetchWorkPackageDatas(Request $request)
    {
        $datas = WorkPackage::query();

        if(!is_null($request->activity_id)) {
            $datas->where('activity_id', $request->activity_id);
        }

        $datas->with('activity');

        return $datas;
    }

}