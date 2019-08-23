<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface DatatablesRepoInterface
{
    public function fetchActivityDatas(Request $request);

    public function fetchAccountDatas(Request $request);

    public function fetchActivityLog(Request $request);

    public function fetchAttendanceData(Request $request);

    public function fetchContractIndexDatas(Request $request);

    public function fetchContractDetailDatas(Request $request);
    
    public function fetchEmployeeDatas(Request $request);

    public function fetchFunctionaryDatas(Request $request);

    public function fetchLocationDatas(Request $request);

    public function fetchOccupationDatas(Request $request);

    public function fetchPositionDatas(Request $request);
    
    public function fetchPositionCategoryDatas(Request $request);

    public function fetchProgramDatas(Request $request);

    public function fetchSalaryComponentDatas(Request $request);

    public function fetchSkpdDatas(Request $request);

    public function fetchWorkDayDatas(Request $request);

    public function fetchWorkPackageDatas(Request $request);
}