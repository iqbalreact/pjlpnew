<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface LeaveEmployeeRepoInterface
{
    public function findRemainingLeave($employee_id);

    public function find($id);

    public function existLeave($start_date, $end_date, $contract_id, $employee_id);

    public function store($employee_id, $contract_id);    

    public function storeHistoryLeave($start_date, $end_date, $contract_id, $employee_id, $diffDay = null, $leaveType = 0, $dates = null);    

    public function resetLeave($employee_id, $contract_id);

    public function deleteHistoryLeave($start_date, $end_date, $contract_id, $employee_id);
}