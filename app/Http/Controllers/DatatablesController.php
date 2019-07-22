<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;

class DatatablesController extends Controller
{
    public function __construct(DatatablesBussInterface $datatables)
	{
		$this->datatables = $datatables;
    }
    
    public function fetchActivityLog(Request $request)
	{
		return $this->datatables->fetchActivityLog($request);
	}

	public function fetchAccountDatas(Request $request)
	{
		return $this->datatables->fetchAccountDatas($request);
	}

	public function fetchEmployeeDatas(Request $request)
	{
		return $this->datatables->fetchEmployeeDatas($request);
	}

	public function fetchSkpdDatas(Request $request)
	{
		return $this->datatables->fetchSkpdDatas($request);
	}
}
