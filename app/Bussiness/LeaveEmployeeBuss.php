<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\LeaveEmployeeBussInterface;
use App\Bussiness\Contracts\AttendanceBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;
use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use Carbon\Carbon;
use Carbon\CarbonPeriod;

class LeaveEmployeeBuss implements LeaveEmployeeBussInterface
{
    public function __construct(
        LeaveEmployeeRepoInterface $leaveEmployeeRepo,
        AttendanceBussInterface $attendance,
        ContractBussInterface $contract
    ) {
        $this->leaveEmployeeRepo    = $leaveEmployeeRepo;
        $this->attendance           = $attendance;
        $this->contract             = $contract;
    }

    public function saveRangeLeave(Request $request)
    {
        $contract = $this->contract->find($request->contract_id);

        $leave = $this->leaveEmployeeRepo->storeHistoryLeave(
                    $request->start_date, 
                    $request->end_date, 
                    $contract->id, 
                    $request->employee_id, 
                    $request->diffDay, 
                    $request->leave_type
                );
        
        // Save attendance
        foreach($request->rangeDate as $date) {
            $attendanceData = new Request();
            $attendanceData->attendance         = 'leave';
            $attendanceData->employee_id        = $request->employee_id; 
            $attendanceData->contract_id        = $contract->id; 
            $attendanceData->work_package_id    = $contract->work_package_id; 
            $attendanceData->date               = $date;
            $attendanceData->leave_type         = $request->leave_type;
            
            $attendance = $this->attendance->store($attendanceData, $fromLeaveRequest = true);
        }

        return $leave;
    }

    public function genereateDateRange($start_date, $end_date, $employee_id)
    {
        $startDate  = Carbon::parse($start_date);
        $endDate    = Carbon::parse($end_date);

        $dates = [];

        for($d = $startDate; $d->lte($endDate); $d->addDay()) {
            $labelWeekend = $d->isWeekEnd() ? '<label class="label label-danger"> Weekend <label>' : '<label class="label label-primary">Bukan Weekend<label>';
            $checkBoxWeekend = $d->isWeekEnd() ? '<input type="checkbox" name="dateLeave" class="checkbox" value="'.$d->format('d-m-Y').'">' : '<input type="checkbox" name="dateLeave" class="checkbox" value="'.$d->format('d-m-Y').'" checked>';
            $data = [
                'date'          => $d->format('d-m-Y'),
                'weekend'       => $labelWeekend,
                'day'           => $d->format('l'),
                'dateTransform' => $d->format('d F Y'),
                'checkbox'      => $checkBoxWeekend
            ];

            array_push($dates, $data);
        }

        $remainingLeave = $this->leaveEmployeeRepo->findRemainingLeave($employee_id);

        $result = [
            'dates'             => $dates,
            'remaining_leave'   => $remainingLeave['leave'],
            'totaLeave'         => count($dates),
            'contract'          => $remainingLeave['contract']
        ];
    
        return $result;
    }
}