<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use App\Models\Employee;
use App\Models\Skpd;

class DatatablesRepo implements DatatablesRepoInterface
{
    public function fetchEmployeeDatas(Request $request)
    {
    	$datas = Employee::query();

        return $datas;
    }

    public function fetchSkpdDatas(Request $request)
    {
    	$datas = Skpd::query();

        return $datas;
    }

}