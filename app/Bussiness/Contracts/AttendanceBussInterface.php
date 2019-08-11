<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AttendanceBussInterface
{
    public function store(Request $request);
}