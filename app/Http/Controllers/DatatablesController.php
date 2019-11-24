<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Bussiness\Contracts\AssessmentDatatablesBussInterface;
use App\Bussiness\Contracts\AttendanceDatatablesBussInterface;
use App\Bussiness\Contracts\PayrollDatatablesBussInterface;

class DatatablesController extends Controller
{
    public function __construct(
		AssessmentDatatablesBussInterface $assessment,
		AttendanceDatatablesBussInterface $attendance,
		DatatablesBussInterface $datatables,
		PayrollDatatablesBussInterface $payroll
	) {
		$this->datatables 	= $datatables;
		$this->assessment 	= $assessment;
		$this->attendance 	= $attendance;
		$this->payroll 		= $payroll;
	}
	
	public function fetchAssessmentDatas(Request $request)
	{
		return $this->assessment->fetchTemplate($request);
	}

	public function fetchAttendanceDatas(Request $request)
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

	public function fetchHistoryLeaveEmployeeDatas(Request $request)
	{
		return $this->datatables->fetchHistoryLeaveEmployeeDatas($request);
	}

	public function fetchLocationDatas(Request $request)
	{
		return $this->datatables->fetchLocationDatas($request);
	}

	public function fetchOccupationDatas(Request $request)
	{
		return $this->datatables->fetchOccupationDatas($request);
	}

	public function fetchPaymentLetterDatas(Request $request)
	{
		return $this->datatables->fetchPaymentLetterDatas($request);
	}

	public function fetchPayrollDatas(Request $request)
	{
		return $this->payroll->fetchTemplate($request);
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

	public function fetchSalaryComponentDatas(Request $request)
	{
		return $this->datatables->fetchSalaryComponentDatas($request);
	}

	public function fetchSkpdDatas(Request $request)
	{
		return $this->datatables->fetchSkpdDatas($request);
	}

	public function fetchWorkDayDatas(Request $request)
	{
		return $this->datatables->fetchWorkDayDatas($request);
	}

	public function fetchWorkHandoverDatas(Request $request)
	{
		return $this->datatables->fetchWorkHandoverDatas($request);
	}

	public function fetchWorkInspectionDatas(Request $request)
	{
		return $this->datatables->fetchWorkInspectionDatas($request);
	}

	public function fetchWorkPackageDatas(Request $request)
	{
		return $this->datatables->fetchWorkPackageDatas($request);
	}
}
