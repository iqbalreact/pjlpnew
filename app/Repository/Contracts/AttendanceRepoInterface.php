<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface AttendanceRepoInterface
{
    public function store(Request $request);    
}