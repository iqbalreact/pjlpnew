<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\OccupationRepoInterface;

use App\Models\Occupation;

use Carbon\Carbon;

class OccupationRepo implements OccupationRepoInterface
{
    public function find($id)
    {
        $data = Occupation::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function checkOccupation($functionary_id, $start_date, $end_date, $id = null)
    {
        $from = Carbon::parse($start_date);
        $to   = Carbon::parse($end_date);

        $data = Occupation::query();

        if (!empty($id)) {
            $data = $data->where('id', '!=', $id);
        }

        $data = $data->where('functionary_id', $functionary_id)
                    ->where('end_date', '>=', $from)
                    ->where('status', 'active')
                    ->first();

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Occupation();
        $data->functionary_id   = $request->functionary_id;
        $data->skpd_id          = $request->skpd_id;
        $data->start_date       = Carbon::parse($request->start_date);
        $data->end_date         = Carbon::parse($request->end_date);
        $data->position         = $request->position;
        $data->status           = $request->status;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Occupation::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->functionary_id   = $request->functionary_id;
        $data->skpd_id          = $request->skpd_id;
        $data->start_date       = Carbon::parse($request->start_date);
        $data->end_date         = Carbon::parse($request->end_date);
        $data->position         = $request->position;
        $data->status           = $request->status;
        $data->update();

        return $data;
    }
}