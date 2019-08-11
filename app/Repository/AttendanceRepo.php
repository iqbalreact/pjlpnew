<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\AttendanceRepoInterface;

use App\Models\Attendance;

use Carbon\Carbon;

class AttendanceRepo implements AttendanceRepoInterface
{
    public function store(Request $request)
    {
        $data = Attendance::updateOrCreate(
            [
                'employee_id'       => $request->employee_id, 
                'contract_id'       => $request->contract_id, 
                'work_package_id'   => $request->work_package_id, 
                'date'              => Carbon::parse($request->date)
            ],[
                'from'      => $request->from,
                'to'        => $request->to,
                'ceremony'  => $request->ceremony,
                'late'      => $request->late
            ]
        );

        return $data;
    }
}