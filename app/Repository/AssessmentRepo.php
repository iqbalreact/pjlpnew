<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\AssessmentRepoInterface;

use App\Models\Assessment;

use Carbon\Carbon;

class AssessmentRepo implements AssessmentRepoInterface
{
    public function store(Request $request)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $data = Assessment::updateOrCreate(
            [
                'month'             => $month,
                'year'              => $year,
                'employee_id'       => $request->employee_id, 
                'contract_id'       => $request->contract_id, 
                'work_package_id'   => $request->work_package_id
            ],[
                'work_completion_rate'      => $request->work_completion_rate,
                'work_completion_time'      => $request->work_completion_time,
                'work_quality'              => $request->work_quality,
                'obidence_on_obligation'    => $request->obidence_on_obligation,
                'obidence_on_rule'          => $request->obidence_on_rule
            ]
        );

        return $data;
    }
}