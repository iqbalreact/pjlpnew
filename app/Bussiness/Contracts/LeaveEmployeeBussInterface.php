<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface LeaveEmployeeBussInterface
{
    public function find($id);

    public function findLeaveHistory($id);

    public function saveRangeLeave(Request $request);

    public function genereateDateRange($start_date, $end_date, $employee_id);

    public function deleteLeave($id);
}