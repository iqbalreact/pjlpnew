<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkPackageRepoInterface;

use App\Models\WorkPackage;

class WorkPackageRepo implements WorkPackageRepoInterface
{
    public function find($id)
    {
        $data = WorkPackage::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function getByName($name, $activity_id = null)
    {
        $query = WorkPackage::query();

        if (!is_null($activity_id)) {
            $query = $query->where('activity_id', $activity_id);
        }

        $query = $query->where('name', 'LIKE', '%'.$name.'%')->take(20)->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new WorkPackage();
        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->activity_id  = $request->activity_id; 
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkPackage::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->activity_id  = $request->activity_id; 
        $data->update();

        return $data;
    }
}