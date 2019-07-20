<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface EmployeeBussInterface
{
    public function fetchEmployeeDatas(Request $request);    
}