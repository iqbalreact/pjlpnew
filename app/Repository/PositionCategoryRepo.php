<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\PositionCategoryRepoInterface;

use App\Models\PositionCategory;

class PositionCategoryRepo implements PositionCategoryRepoInterface
{
    public function all()
    {
        return PositionCategory::orderBy('name', 'asc')->get();
    }

    public function find($id)
    {
        $data = PositionCategory::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new PositionCategory();
        $data->name         = $request->name;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = PositionCategory::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->name         = $request->name;
        $data->update();

        return $data;
    }
}