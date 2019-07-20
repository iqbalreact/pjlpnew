<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use App\Models\Employee;

class DatatablesRepo implements DatatablesRepoInterface
{
    public function fetchEmployeeDatas(Request $request)
    {
    	$datas = Employee::query();

        return $datas;
    }

}