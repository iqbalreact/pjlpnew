<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface AttendanceRepoInterface
{
    public function checkData(Request $request);

    public function store(Request $request);
    
    public function findRecap(Request $request);
    
    public function findRecapLeave(Request $request, $contract, $leaveType = 0, $sixMonth = false);    
    
    public function storeRecap(Request $request, $status, $oldStatus = null, $newStatus = null);    
}