<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AttendanceBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;

use App\Repository\Contracts\AttendanceRepoInterface;
use App\Repository\Contracts\LeaveEmployeeRepoInterface;

class AttendanceBuss implements AttendanceBussInterface
{
    public function __construct(
        AttendanceRepoInterface $attendanceRepo,
        LeaveEmployeeRepoInterface $leaveEmployeeRepo,
        ContractBussInterface $contract
    ) {
        $this->attendanceRepo       = $attendanceRepo;
        $this->leaveEmployeeRepo    = $leaveEmployeeRepo;
        $this->contract             = $contract;
    }

    public function findRecap(Request $request)
    {
        return $this->attendanceRepo->findRecap($request);
    }

    public function findRecapLeave(Request $request, $contract, $sixMonth = false)
    {
        return $this->attendanceRepo->findRecapLeave($request, $contract, $sixMonth);
    }

    public function findRecapLeaveSpecial(Request $request)
    {
        return $this->attendanceRepo->findRecapLeaveSpecial($request);
    }

    public function totalAttendance($recapAttendance)
    {
        $attend     = isset($recapAttendance->attend) ? $recapAttendance->attend : 0;
        $leave      = isset($recapAttendance->leave) ? $recapAttendance->leave : 0;
        $sick       = isset($recapAttendance->sick) ? $recapAttendance->sick : 0;
        $notPresent = isset($recapAttendance->not_present) ? $recapAttendance->not_present : 0;

        return $attend + $leave + $sick + $notPresent;
    }

    public function findAttendanceEmployee(Request $request)
    {
        $data = $this->attendanceRepo->findAttendanceEmployee($request);
        // return $data;
        if (!$data) {
            return false;
        }

        $result = [];

        foreach($data as $d) {

            if ($d->attendance == 'attend') {
                $tempResult = [
                    'title' => 'Hadir',
                    'start' => $d->date,
                    'color' => 'blue',   
                    'textColor' => 'black'
                ];
            } else if ($d->attendance == 'leave') {
                $tempResult = [
                    'title' => 'Cuti',
                    'start' => $d->date,
                    'color' => 'green',   
                    'textColor' => 'black'
                ];
            } else if ($d->attendance == 'sick') {
                $tempResult = [
                    'title' => 'Sakit',
                    'start' => $d->date,
                    'color' => 'yellow',   
                    'textColor' => 'black'
                ];
            } else if ($d->attendance == 'not_present') {
                $tempResult = [
                    'title' => 'Tidak Hadir',
                    'start' => $d->date,
                    'color' => 'red',   
                    'textColor' => 'black'
                ];
            }

            array_push($result, $tempResult);
        }

        return $result;
    }

    public function findCeremonyEmployee(Request $request)
    {
        $data = $this->attendanceRepo->findCeremonyEmployee($request);
        
        if (!$data) {
            return false;
        }

        $result = [];

        foreach($data as $d) {
            $tempResult = [
                'title' => 'Apel Pagi',
                'start' => $d->date,
                'color' => 'purple',   
                'textColor' => 'black'
            ];

            array_push($result, $tempResult);
        }

        return $result;
    }

    public function store(Request $request, $fromLeaveRequest = false)
    {
        if (is_null($request->attendance)) {
            return;
        }

        $checkData  = $this->attendanceRepo->checkData($request); 
        $data       = $this->attendanceRepo->store($request);
        
        $status     = is_null($checkData) ? 'new' : 'old';
        $oldStatus  = is_null($checkData) ? null : $checkData->attendance;
        $newStatus  = $data->attendance;

        $this->attendanceRepo->storeRecap($request, $status, $oldStatus, $newStatus);

        if (!$fromLeaveRequest) {
            if ($data->attendance != 'attend') {
                $checkLeave = $this->leaveEmployeeRepo->existLeave($data->date, $data->date, $data->contract_id, $data->employee_id);
                
                if (is_null($checkLeave)) {            
                    $remain_leave = $this->leaveEmployeeRepo->findRemainingLeave($request->employee_id);
                    if (isset($remain_leave['leave']) && $remain_leave['leave']->remain_leave > 0) {
                        $this->leaveEmployeeRepo->storeHistoryLeave($data->date, $data->date, $data->contract_id, $data->employee_id);
                    }
                }
            } else if ($data->attendance == 'attend') {
                if (!is_null($oldStatus) && $oldStatus != 'attend') {
                    $checkLeave = $this->leaveEmployeeRepo->existLeave($data->date, $data->date, $data->contract_id, $data->employee_id);
                    
                    if (!is_null($checkLeave)) {
                        $this->leaveEmployeeRepo->resetLeave($data->employee_id, $data->contract_id);
                        $this->leaveEmployeeRepo->deleteHistoryLeave($data->date, $data->date, $data->contract_id, $data->employee_id);
                    }
                }
            }
        }

        return $data;
    }
}