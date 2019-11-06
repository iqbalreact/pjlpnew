<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\LeaveEmployeeBussInterface;
use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use Carbon\Carbon;
use Carbon\CarbonPeriod;

class LeaveEmployeeBuss implements LeaveEmployeeBussInterface
{
    public function __construct(
        LeaveEmployeeRepoInterface $leaveEmployeeRepo
    ) {
        $this->leaveEmployeeRepo = $leaveEmployeeRepo;
    }

    public function genereateDateRange($start_date, $end_date, $employee_id)
    {
        $startDate  = Carbon::parse($start_date);
        $endDate    = Carbon::parse($end_date);

        $dates = [];

        for($d = $startDate; $d->lte($endDate); $d->addDay()) {
            $labelWeekend = $d->isWeekEnd() ? '<label class="label label-danger"> Weekend <label>' : '<label class="label label-primary">Bukan Weekend<label>';
            $data = [
                'weekend'       => $labelWeekend,
                'day'           => $d->format('l'),
                'dateTransform' => $d->format('d F Y'),
                'date'          => $d

            ];

            array_push($dates, $data);
        }

        $result = [
            'dates'             => $dates,
            'remaining_leave'   => $this->leaveEmployeeRepo->findRemainingLeave($employee_id)
        ];
    
        return $result;
    }
}