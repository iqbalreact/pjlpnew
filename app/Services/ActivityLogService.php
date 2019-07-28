<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\ActivityLogServiceInterface;

use Spatie\Activitylog\Models\Activity;

class ActivityLogService implements ActivityLogServiceInterface
{
    protected $subjectRoute = [
        'App\Models\Employee'       => '/admin/employee/',
        'App\Models\User'           => '/admin/account/',
        'App\Models\Program'        => '/admin/program/',
        'App\Models\Skpd'           => '/admin/skpd/'
        // 'App\Models\WorkPackage'    => '/admin/workpackage/',
    ]; 

    public function getSubjectRoute($subject)
    {
        return $this->subjectRoute[$subject];
    }

    public function all()
    {
        $activity = Activity::where('subject_type', 'App\Models\Employee')
                        ->where('subject_id', 50)
                        ->with('subject', 'causer')
                        ->orderBy('created_at', 'desc')
                        ->get();

        return $activity;
    }

    public function find($id)
    {
        $data = Activity::with('subject', 'causer')->find($id);

        if (is_null($data)) {
            return false;
        }

        return $data;
    }
}