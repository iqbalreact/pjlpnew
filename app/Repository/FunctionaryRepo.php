<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\FunctionaryRepoInterface;

use App\Models\Functionary;

class FunctionaryRepo implements FunctionaryRepoInterface
{
    public function find($id)
    {
        $data = Functionary::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Functionary();
        $data->nip          = $request->nip;
        $data->name         = $request->name;
        $data->phone_number = $request->phone_number;
        $data->save();

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Functionary::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->nip          = $request->nip;
        $data->name         = $request->name;
        $data->phone_number = $request->phone_number;
        $data->update();

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }
}