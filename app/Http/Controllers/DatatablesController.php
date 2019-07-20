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
    
    public function fetchEmployeeDatas(Request $request)
	{
		return $this->datatables->fetchEmployeeDatas($request);
	}
}
