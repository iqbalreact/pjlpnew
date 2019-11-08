<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Repository\Contracts\AttendanceRepoInterface;

use App\Models\Attendance;
use App\Models\RecapAttendance;

use Carbon\Carbon;
use DB;

class AttendanceRepo implements AttendanceRepoInterface
{
    public function __construct(
        ContractBussInterface $contract
    ) {
        $this->contract = $contract;
    }

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
        $status = $request->attendance;

        $cut_leave = 0;
        if ($this->contract->checkBeforeSixMonth($request->contract_id, $request->date) && $status != 'attend') {
            $cut_leave = 1;
        }

        $data = Attendance::updateOrCreate(
            [
                'employee_id'       => $request->employee_id, 
                'contract_id'       => $request->contract_id, 
                'work_package_id'   => $request->work_package_id, 
                'date'              => Carbon::parse($request->date)
            ],[
                'attendance'    => $status,
                'from'          => $status == 'attend' ? $request->from : "00:00",
                'to'            => $status == 'attend' ? $request->to : "00:00",
                'ceremony'      => $status == 'attend' ? $request->ceremony : 0,
                'late'          => $status == 'attend' ? $request->late : 0,
                'leave_type'    => isset($request->leave_type) ? $request->leave_type : 0,
                'cut_leave'     => $cut_leave
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
    
    public function findRecapLeave(Request $request, $contract, $sixMonth = false)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $data = Attendance::query();

        $data = $data->whereMonth('date', $month)
                    ->whereYear('date', $year)
                    ->where('employee_id', $request->employee_id)
                    ->where('contract_id', $request->contract_id)
                    ->where('work_package_id', $request->work_package_id)
                    ->where('attendance', 'leave')
                    ->where('leave_type', 0);

        if ($sixMonth) {
            $data = $data->where(function($query){
                        $query->where('attendance', 'leave')
                            ->orWhere('attendance', 'sick')
                            ->orWhere('attendance', 'not_present');
                    });
        } else {
            $data = $data->where(function($query){
                        $query->orWhere('attendance', 'sick')
                            ->orWhere('attendance', 'not_present');
                    })->where('cut_leave', 0);
        }
        

        if ($sixMonth) {
            $sixMonthDate = Carbon::parse($contract->start_date)->addMonth(6);

            $data = $data->where('date', '<', $sixMonthDate );
        }

        $data = $data->count();

        return $data;
    }

    public function findRecapLeaveSpecial(Request $request)
    {
        $data = Attendance::where('date', '<=', Carbon::parse($request->date))
                        ->where('employee_id', $request->employee_id)
                        ->where('contract_id', $request->contract_id)
                        ->where('work_package_id', $request->work_package_id)
                        ->where('attendance', 'leave')
                        ->where('leave_type', 1)
                        ->get()
                        ->groupBy(function ($val) {
                            return Carbon::parse($val->date)->format('m-Y');
                        });

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