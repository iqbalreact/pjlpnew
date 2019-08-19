<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkDayRepoInterface;

use App\Models\WorkDay;

use Carbon\Carbon;

class WorkDayRepo implements WorkDayRepoInterface
{
    public function find($id)
    {
        $data = WorkDay::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new WorkDay();
        $data->periode      = Carbon::parse($request->periode);
        $data->total        = $request->total;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkDay::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->periode      = Carbon::parse($request->periode);
        $data->total        = $request->total;
        $data->update();

        return $data;
    }
}