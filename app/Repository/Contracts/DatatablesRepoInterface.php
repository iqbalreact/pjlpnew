<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface DatatablesRepoInterface
{
    public function fetchEmployeeDatas(Request $request);
}