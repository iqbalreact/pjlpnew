<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use App\Models\LeaveEmployee;
use App\Models\HistoryLeaveEmployee;

use Carbon\Carbon;

class LeaveEmployeeRepo implements LeaveEmployeeRepoInterface
{
    public function find($id)
    {
        $data = LeaveEmployee::find($id);
        
        if (is_null($data)) {
            return false;
        }
        
        return $data;
    }

    public function store($employee_id, $contract_id)
    {
        $data = new LeaveEmployee();
        $data->employee_id  = $employee_id;
        $data->contract_id  = $contract_id;
        $data->remain_leave = 12;
        $data->save();

        return $data;
    }

    public function storeHistoryLeave($start_date, $end_date, $contract_id, $employee_id)
    {
        // Store History Leave
        $data = new HistoryLeaveEmployee();
        $data->start_date   = Carbon::parse($start_date);
        $data->end_date     = Carbon::parse($end_date);
        $data->contract_id  = $contract_id;
        $data->employee_id  = $employee_id;
        $data->save();

        if ($data->start_date == $data->end_date) {
            $diffDay = 1;
        } else {
            $diffDay = $data->start_date->diffindays($data->end_date);
        } 

        // Calculate Leave
        $this->calculateLeave($employee_id, $contract_id, $diffDay);

        return $data;
    }

    // Calculate Leave
    public function calculateLeave($employee_id, $contract_id, $diffDay)
    {
        

        $leave = LeaveEmployee::where('employee_id', $employee_id)
                            ->where('contract_id', $contract_id)
                            ->first();

        if (!is_null($leave)) {
            $leave->remain_leave = $leave->remain_leave - $diffDay;
            $leave->update();

            
        }

        return true;
    }
}