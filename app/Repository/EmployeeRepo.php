<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\EmployeeRepoInterface;

use App\Models\Employee;

class EmployeeRepo implements EmployeeRepoInterface
{
    public function find($id)
    {
        $data = Employee::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Employee();
        $data->nik                  = $request->nik;
        $data->name                 = $request->name;
        $data->ktp                  = $request->ktp;
        $data->npwp                 = $request->npwp;
        $data->account_number       = $request->account_number;
        $data->bpjs_healthcare      = $request->bpjs_healthcare;
        $data->bpjs_social_security = $request->bpjs_social_security;

        $data->save();

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Employee::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->nik                  = $request->nik;
        $data->name                 = $request->name;
        $data->ktp                  = $request->ktp;
        $data->npwp                 = $request->npwp;
        $data->account_number       = $request->account_number;
        $data->bpjs_healthcare      = $request->bpjs_healthcare;
        $data->bpjs_social_security = $request->bpjs_social_security;

        $data->update();

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }
}