<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\EmployeeRepoInterface;

use App\Services\Contracts\BankServiceInterface;
use App\Services\Contracts\GenderServiceInterface;
use App\Services\Contracts\ReligionServiceInterface;

use App\Models\Employee;

class EmployeeRepo implements EmployeeRepoInterface
{
    public function __construct(
        BankServiceInterface $bankService, 
        GenderServiceInterface $genderService,
        ReligionServiceInterface $religionService
    ) {
        $this->bankService         = $bankService;
        $this->genderService       = $genderService;
        $this->religionService     = $religionService;
    }

    public function find($id)
    {
        $data = Employee::find($id);
        
        if (is_null($data)) {
            return false;
        }

        $data->bankNameTransform        = !is_null($data->bank_name) ? $this->bankService->bankNameTransform($data->bank_name) : '';
        $data->genderNameTransform      = !is_null($data->gender) ? $this->genderService->genderNameTransform($data->gender) : '';
        $data->religionNameTransform    = !is_null($data->religion) ? $this->religionService->religionNameTransform($data->religion) : '';

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Employee();
        $data->nip                  = $request->nip;
        $data->name                 = $request->name;
        $data->ktp                  = $request->ktp;
        $data->npwp                 = $request->npwp;
        $data->gender               = $request->gender;
        $data->address              = $request->address;
        $data->religion             = $request->religion;
        $data->phone_number         = $request->phone_number;
        $data->bank_name            = $request->bank_name;
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

        $data->nip                  = $request->nip;
        $data->name                 = $request->name;
        $data->ktp                  = $request->ktp;
        $data->npwp                 = $request->npwp;
        $data->address              = $request->address;
        $data->religion             = $request->religion;
        $data->phone_number         = $request->phone_number;
        $data->bank_name            = $request->bank_name;
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