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

    public function getByName($name)
    {
        $query = Skpd::query();

        $query = $query->where('name', 'LIKE', '%'.$name.'%')
                    ->orderBy('name')
                    ->take(20)
                    ->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new Skpd();
        $data->number       = $request->number;
        $data->name         = $request->name;
        $data->address      = $request->address; 
        $data->phone_number = $request->phone_number;
        $data->fax          = $request->fax;
        $data->post_code    = $request->post_code;
        $data->website      = $request->website;
        $data->email        = $request->email;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Skpd::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->number       = $request->number;
        $data->name         = $request->name;
        $data->address      = $request->address; 
        $data->phone_number = $request->phone_number;
        $data->fax          = $request->fax;
        $data->post_code    = $request->post_code;
        $data->website      = $request->website;
        $data->email        = $request->email;
        $data->update();

        return $data;
    }
}