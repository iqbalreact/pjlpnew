<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\SkpdRepoInterface;

use App\Models\Skpd;

class SkpdRepo implements SkpdRepoInterface
{
    public function find($id)
    {
        $data = Skpd::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Skpd();
        $data->number = $request->number;
        $data->name   = $request->name;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Skpd::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->number   = $request->number;
        $data->name     = $request->name;
        $data->update();

        return $data;
    }
}