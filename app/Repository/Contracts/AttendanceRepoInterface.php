<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface AttendanceRepoInterface
{
    public function checkData(Request $request);

    public function store(Request $request);
    
    public function findRecap(Request $request);    
    
    public function storeRecap(Request $request, $status, $oldStatus = null, $newStatus = null);    
}