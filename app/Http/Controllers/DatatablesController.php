<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBLLInterface;

class DatatablesController extends Controller
{
    public function __construct(DatatablesBLLInterface $datatables)
	{
		$this->datatables = $datatables;
    }
    
    public function fetchEmployeeDatas(Request $request)
	{
		return $this->datatables->fetchEmployeeDatas($request);
	}
}
