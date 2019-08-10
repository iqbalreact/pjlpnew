<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\ActivityRepoInterface;

use App\Models\Activity;

class ActivityRepo implements ActivityRepoInterface
{
    public function find($id)
    {
        $data = Activity::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function count($program_id = null)
    {
        $data = Activity::query();

        if (!empty($program_id)) {
            $data = $data->where('program_id', $program_id);
        }

        $data = $data->count();

        return $data;
    }

    public function getByName($name, $program_id = null)
    {
        $query = Activity::query();

        if (!is_null($program_id)) {
            $query = $query->where('program_id', $program_id);
        }

        $query = $query->where('name', 'LIKE', '%'.$name.'%')
                    ->orderBy('name')
                    ->take(20)
                    ->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new Activity();
        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->program_id   = $request->program_id; 
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Activity::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->program_id   = $request->program_id; 
        $data->update();

        return $data;
    }
}