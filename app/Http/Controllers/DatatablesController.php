<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Bussiness\Contracts\AttendanceDatatablesBussInterface;

class DatatablesController extends Controller
{
    public function __construct(
		AttendanceDatatablesBussInterface $attendance,
		DatatablesBussInterface $datatables
	) {
		$this->datatables = $datatables;
		$this->attendance = $attendance;
	}
	
	public function fetchTemplateDatas(Request $request)
	{
		return $this->attendance->fetchTemplate($request);
	}
    
    public function fetchActivityDatas(Request $request)
	{
		return $this->datatables->fetchActivityDatas($request);
	}

	public function fetchActivityLog(Request $request)
	{
		return $this->datatables->fetchActivityLog($request);
	}

	public function fetchAccountDatas(Request $request)
	{
		return $this->datatables->fetchAccountDatas($request);
	}

	public function fetchContractIndexDatas(Request $request)
	{
		return $this->datatables->fetchContractIndexDatas($request);
	}

    public function fetchContractDetailDatas(Request $request)
	{
		return $this->datatables->fetchContractDetailDatas($request);
	}

	public function fetchEmployeeDatas(Request $request)
	{
		return $this->datatables->fetchEmployeeDatas($request);
	}

	public function fetchFunctionaryDatas(Request $request)
	{
		return $this->datatables->fetchFunctionaryDatas($request);
	}

	public function fetchLocationDatas(Request $request)
	{
		return $this->datatables->fetchLocationDatas($request);
	}

	public function fetchOccupationDatas(Request $request)
	{
		return $this->datatables->fetchOccupationDatas($request);
	}

	public function fetchPositionDatas(Request $request)
	{
		return $this->datatables->fetchPositionDatas($request);
	}

	public function fetchPositionCategoryDatas(Request $request)
	{
		return $this->datatables->fetchPositionCategoryDatas($request);
	}

	public function fetchProgramDatas(Request $request)
	{
		return $this->datatables->fetchProgramDatas($request);
	}

	public function fetchSkpdDatas(Request $request)
	{
		return $this->datatables->fetchSkpdDatas($request);
	}

	public function fetchWorkDayDatas(Request $request)
	{
		return $this->datatables->fetchWorkDayDatas($request);
	}

	public function fetchWorkPackageDatas(Request $request)
	{
		return $this->datatables->fetchWorkPackageDatas($request);
	}
}
