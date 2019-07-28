<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface DatatablesBussInterface
{
    public function fetchEmployeeDatas(Request $request); 
    
    public function fetchActivityLog(Request $request);    
    
    public function fetchProgramDatas(Request $request);

    public function fetchSkpdDatas(Request $request);    
}