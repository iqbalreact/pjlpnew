<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use Spatie\Activitylog\Models\Activity as ActivityLog;

use App\Models\Activity; 
use App\Models\Employee;
use App\Models\Functionary;
use App\Models\Skpd;
use App\Models\Program;
use App\Models\PositionCategory;
use App\Models\User;
use App\Models\WorkPackage;

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

    public function fetchEmployeeDatas(Request $request)
    {
    	$datas = Employee::query();

        return $datas;
    }

    public function fetchFunctionaryDatas(Request $request)
    {
    	$datas = Functionary::query();

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

        return $datas;
    }

    public function fetchSkpdDatas(Request $request)
    {
    	$datas = Skpd::query();

        return $datas;
    }

    public function fetchWorkPackageDatas(Request $request)
    {
        $datas = WorkPackage::query();

        if(!is_null($request->activity_id)) {
            $datas->where('activity_id', $request->activity_id);
        }

        return $datas;
    }

}