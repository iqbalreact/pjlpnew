<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AttendanceBussInterface;

use App\Repository\Contracts\AttendanceRepoInterface;

class AttendanceBuss implements AttendanceBussInterface
{
    public function __construct(
        AttendanceRepoInterface $attendanceRepo
    ) {
        $this->attendanceRepo = $attendanceRepo;
    }

    public function findRecap(Request $request)
    {
        return $this->attendanceRepo->findRecap($request);
    }

    public function totalAttendance($recapAttendance)
    {
        $attend     = isset($recapAttendance->attend) ? $recapAttendance->attend : 0;
        $leave      = isset($recapAttendance->leave) ? $recapAttendance->leave : 0;
        $sick       = isset($recapAttendance->sick) ? $recapAttendance->sick : 0;
        $notPresent = isset($recapAttendance->not_present) ? $recapAttendance->not_present : 0;

        return $attend + $leave + $sick + $notPresent;
    }

    public function store(Request $request)
    {
        $checkData  = $this->attendanceRepo->checkData($request); 
        $data       = $this->attendanceRepo->store($request);
        
        $status     = is_null($checkData) ? 'new' : 'old';
        $oldStatus  = is_null($checkData) ? null : $checkData->attendance;
        $newStatus  = $data->attendance;

        $this->attendanceRepo->storeRecap($request, $status, $oldStatus, $newStatus);

        return $data;
    }
}