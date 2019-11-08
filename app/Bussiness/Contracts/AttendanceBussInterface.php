<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AttendanceBussInterface
{
    public function findRecap(Request $request);

    public function findRecapLeave(Request $request, $contract, $leaveType = 0, $sixMonth = false);
    
    public function store(Request $request, $fromLeaveRequest = false);
}