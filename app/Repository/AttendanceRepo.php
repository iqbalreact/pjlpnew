<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\AttendanceRepoInterface;

use App\Models\Attendance;
use App\Models\RecapAttendance;

use Carbon\Carbon;

class AttendanceRepo implements AttendanceRepoInterface
{
    public function checkData(Request $request)
    {
        $data = Attendance::where('employee_id', $request->employee_id)
                        ->where('contract_id', $request->contract_id)
                        ->where('work_package_id', $request->work_package_id)
                        ->where('date', Carbon::parse($request->date))
                        ->first();

        return $data;
    }

    public function store(Request $request)
    {
        $data = Attendance::updateOrCreate(
            [
                'employee_id'       => $request->employee_id, 
                'contract_id'       => $request->contract_id, 
                'work_package_id'   => $request->work_package_id, 
                'date'              => Carbon::parse($request->date)
            ],[
                'attendance'    => $request->attendance,
                'from'          => $request->from,
                'to'            => $request->to,
                'ceremony'      => $request->ceremony,
                'late'          => $request->late
            ]
        );

        return $data;
    }

    public function findRecap(Request $request)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $data = RecapAttendance::where('month', $month)
                            ->where('year', $year)
                            ->where('employee_id', $request->employee_id)
                            ->where('contract_id', $request->contract_id)
                            ->where('work_package_id', $request->work_package_id)
                            ->first();
        return $data;
    }

    public function storeRecap(Request $request, $status, $oldStatus = null, $newStatus = null)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $recap = $this->findRecap($request);
        
        if (is_null($recap)) {
            $recap = new RecapAttendance();
            $recap->month           = $month;
            $recap->year            = $year;
            $recap->employee_id     = $request->employee_id;
            $recap->contract_id     = $request->contract_id;
            $recap->work_package_id = $request->work_package_id;
            $recap->$newStatus      = 1;
            $recap->save();
        } elseif($status == 'new') {
            $recap->$newStatus = $recap->$newStatus + 1;
            $recap->update();
        } elseif ($oldStatus !== $newStatus) {
            $oldValue = $recap->$oldStatus; 
            $newValue = $recap->$newStatus;

            $recap->$oldStatus = $oldValue - 1;
            $recap->$newStatus = $newValue + 1;
            $recap->update();

        }

        return $recap;
    }
}