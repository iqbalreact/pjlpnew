<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface DatatablesRepoInterface
{
    public function fetchAccountDatas(Request $request);

    public function fetchActivityLog(Request $request);
    
    public function fetchEmployeeDatas(Request $request);

    public function fetchProgramDatas(Request $request);

    public function fetchSkpdDatas(Request $request);
}