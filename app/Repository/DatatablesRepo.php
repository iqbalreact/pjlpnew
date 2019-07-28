<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use Spatie\Activitylog\Models\Activity;
use App\Models\Employee;
use App\Models\Skpd;
use App\Models\Program;
use App\Models\User;

class DatatablesRepo implements DatatablesRepoInterface
{
    public function fetchAccountDatas(Request $request)
    {
    	$datas = User::query();

        return $datas;
    }

    public function fetchActivityLog(Request $request)
    {
        $datas = Activity::query();

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

}