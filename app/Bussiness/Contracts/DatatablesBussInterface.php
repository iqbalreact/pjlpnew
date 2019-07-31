<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface DatatablesBussInterface
{
    public function fetchActivityDatas(Request $request);

    public function fetchActivityLog(Request $request);    

    public function fetchAccountDatas(Request $request);    
    
    public function fetchEmployeeDatas(Request $request); 

    public function fetchFunctionaryDatas(Request $request); 
    
    public function fetchProgramDatas(Request $request);

    public function fetchSkpdDatas(Request $request);    

    public function fetchWorkPackageDatas(Request $request);
}