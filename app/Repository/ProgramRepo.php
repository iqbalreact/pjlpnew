<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\ProgramRepoInterface;

use App\Models\Program;

class ProgramRepo implements ProgramRepoInterface
{
    public function count($skpd_id = null)
    {
        $data = Program::query();

        if (!empty($skpd_id)) {
            $data = $data->where('skpd_id', $skpd_id);
        }

        $data = $data->count();

        return $data;
    }

    public function find($id)
    {
        $data = Program::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function getByName($name, $skpd_id = null)
    {
        $query = Program::query();

        if (!is_null($skpd_id)) {
            $query = $query->where('skpd_id', $skpd_id);
        }

        $query = $query->where('name', 'LIKE', '%'.$name.'%')->take(20)->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new Program();
        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->skpd_id      = $request->skpd_id; 
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Program::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->code         = $request->code;
        $data->name         = $request->name;
        $data->skpd_id      = $request->skpd_id; 
        $data->update();

        return $data;
    }
}