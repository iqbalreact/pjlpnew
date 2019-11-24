<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkHandoverRepoInterface;

use App\Models\WorkHandover;

use Carbon\Carbon;

class WorkHandoverRepo implements WorkHandoverRepoInterface
{
    public function find($id)
    {
        $data = WorkHandover::with('employee', 'skpd', 'functionary')->find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new WorkHandover();
        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->section_1        = $request->section_1;
        $data->section_2        = $request->section_2;
        $data->section_3        = $request->section_3;
        $data->section_4        = $request->section_4;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkHandover::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->section_1        = $request->section_1;
        $data->section_2        = $request->section_2;
        $data->section_3        = $request->section_3;
        $data->section_4        = $request->section_4;
        $data->update();

        return $data;
    }
}