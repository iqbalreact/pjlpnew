<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\PositionRepoInterface;

use App\Models\Position;

class PositionRepo implements PositionRepoInterface
{
    public function find($id)
    {
        $data = Position::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Position();
        $data->name                 = $request->name;
        $data->position_category_id = $request->position_category_id;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Position::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->name         = $request->name;
        $data->position_category_id = $request->position_category_id;
        $data->update();

        return $data;
    }
}