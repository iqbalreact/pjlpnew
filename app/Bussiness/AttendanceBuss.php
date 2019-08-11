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
        $data = $this->attendanceRepo->store($request);
        
        return $data;
    }
}