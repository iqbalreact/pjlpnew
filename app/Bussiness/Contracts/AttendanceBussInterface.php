<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AttendanceBussInterface
{
    public function findRecap(Request $request);

    public function findRecapLeave(Request $request, $contract, $sixMonth = false);

    public function findRecapLeaveSpecial(Request $request);
    
    public function store(Request $request, $fromLeaveRequest = false);
}