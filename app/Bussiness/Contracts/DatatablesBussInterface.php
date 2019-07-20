<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface DatatablesBussInterface
{
    public function fetchEmployeeDatas(Request $request);    
}