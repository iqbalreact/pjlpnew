<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface AttendanceRepoInterface
{
    public function checkData(Request $request);

    public function store(Request $request);
    
    public function findRecap(Request $request);
    
    public function findRecapLeave(Request $request, $contract, $sixMonth = false);    

    public function findRecapLeaveSpecial(Request $request);

    public function findAttendanceEmployee(Request $request);

    public function findCeremonyEmployee(Request $request);
    
    public function storeRecap(Request $request, $status, $oldStatus = null, $newStatus = null);    
}