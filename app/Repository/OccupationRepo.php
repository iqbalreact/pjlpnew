<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\OccupationRepoInterface;

use App\Models\Occupation;

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

    public function store(Request $request)
    {
        $data = new Occupation();
        $data->functionary_id   = $request->functionary_id;
        $data->skpd_id          = $request->skpd_id;
        $data->start_date       = $request->start_date;
        $data->end_date         = $request->end_date;
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
        $data->start_date       = $request->start_date;
        $data->end_date         = $request->end_date;
        $data->position         = $request->position;
        $data->status           = $request->status;
        $data->update();

        return $data;
    }
}