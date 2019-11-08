<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use App\Models\LeaveEmployee;
use App\Models\HistoryLeaveEmployee;
use App\Models\Contract;

use Carbon\Carbon;

class LeaveEmployeeRepo implements LeaveEmployeeRepoInterface
{
    public function findRemainingLeave($employee_id)
    {
        $data = Contract::where('employee_id', $employee_id)
                        ->where('status', 'active')
                        ->first();

        if (!is_null($data)) {
            $data = LeaveEmployee::where('employee_id', $employee_id)
                                ->where('contract_id', $data->id)
                                ->first();
        }

        return $data;
    }

    public function find($id)
    {
        $data = LeaveEmployee::find($id);
        
        if (is_null($data)) {
            return false;
        }
        
        return $data;
    }

    public function existLeave($start_date, $end_date, $contract_id, $employee_id)
    {
        $data = HistoryLeaveEmployee::whereDate('start_date', Carbon::parse($start_date))
                                    ->whereDate('end_date', Carbon::parse($end_date))
                                    ->where('contract_id', $contract_id)
                                    ->where('employee_id', $employee_id)
                                    ->first();

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

    public function storeHistoryLeave($start_date, $end_date, $contract_id, $employee_id, $diffDay = null, $leaveType = 0)
    {
        $start_date = Carbon::parse($start_date);
        $end_date   = Carbon::parse($end_date);

        if (is_null($diffDay)) {
            if ($start_date == $end_date) {
                $diffDay = 1;
            } else {
                $diffDay = $start_date->diffindays($end_date);
            } 
        }        

        // Store History Leave
        $data = new HistoryLeaveEmployee();
        $data->start_date   = Carbon::parse($start_date);
        $data->end_date     = Carbon::parse($end_date);
        $data->contract_id  = $contract_id;
        $data->employee_id  = $employee_id;
        $data->total_day    = $diffDay;
        $data->leave_type   = $leaveType;
        $data->save();

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

    public function resetLeave($employee_id, $contract_id)
    {
        $leave = LeaveEmployee::where('employee_id', $employee_id)
                            ->where('contract_id', $contract_id)
                            ->first();

        if (!is_null($leave)) {
            $leave->remain_leave = $leave->remain_leave + 1;
            $leave->update();
        }

        return true;
    }

    public function deleteHistoryLeave($start_date, $end_date, $contract_id, $employee_id)
    {
        $data = HistoryLeaveEmployee::whereDate('start_date', Carbon::parse($start_date))
                                    ->whereDate('end_date', Carbon::parse($end_date))
                                    ->where('contract_id', $contract_id)
                                    ->where('employee_id', $employee_id)
                                    ->first();
        
        $data->delete();

        return true;
    }
}