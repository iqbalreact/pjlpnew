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

    public function genereateDateRange($start_date, $end_date)
    {
        $startDate  = Carbon::parse($start_date);
        $endDate    = Carbon::parse($end_date);

        $dates = [];

        for($d = $startDate; $d->lte($endDate); $d->addDay()) {
            $data = [
                'weekend'   => $d->isWeekEnd(),
                'date'      => $d->format('l d F Y')
            ];

            array_push($dates, $data);
            // $dates[]['date']    = $d->format('d F Y');
            // $dates[]['weekend'] = $d->isWeekEnd();
        }
    
        return $dates;
    }
}