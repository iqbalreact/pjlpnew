<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\DatatablesRepoInterface;

use App\Models\Employee;
use App\Models\Skpd;
use App\Models\User;

class DatatablesRepo implements DatatablesRepoInterface
{
    public function fetchAccountDatas(Request $request)
    {
    	$datas = User::query();

        return $datas;
    }

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