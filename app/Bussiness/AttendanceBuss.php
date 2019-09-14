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