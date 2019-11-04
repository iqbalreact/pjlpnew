<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface LeaveEmployeeRepoInterface
{
    public function find($id);

    public function store($employee_id, $contract_id);    

    public function storeHistoryLeave($start_date, $end_date, $contract_id, $employee_id);    
}