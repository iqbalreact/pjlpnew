<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\LocationRepoInterface;

use App\Models\Location;

class LocationRepo implements LocationRepoInterface
{
    public function find($id)
    {
        $data = Location::find($id);
        
        if (is_null($data)) {
            return false;
        }
        
        return $data;
    }

    public function getByName($name, $skpd_id = null)
    {
        $query = Location::query();

        if (!is_null($skpd_id)) {
            $query = $query->where('skpd_id', $skpd_id);
        }

        $query = $query->where('name', 'LIKE', '%'.$name.'%')->take(20)->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new Location();
        $data->number       = $request->number;
        $data->skpd_id      = $request->skpd_id;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Location::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->number       = $request->number;
        $data->skpd_id      = $request->skpd_id;
        $data->update();

        return $data;
    }
}