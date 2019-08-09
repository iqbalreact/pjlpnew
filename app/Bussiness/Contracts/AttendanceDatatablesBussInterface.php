<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AttendanceDatatablesBussInterface
{
    public function fetchTemplate(Request $request);
}