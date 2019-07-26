<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\EmployeeRequest;

use App\Bussiness\Contracts\EmployeeBussInterface;

use App\Services\Contracts\ActivityLogServiceInterface;
use App\Services\Contracts\BankServiceInterface;
use App\Services\Contracts\GenderServiceInterface;
use App\Services\Contracts\ReligionServiceInterface;

use Spatie\Activitylog\Models\Activity;


class EmployeeController extends Controller
{
    public function __construct(
        EmployeeBussInterface $employee,
        ActivityLogServiceInterface $activityLog, 
        BankServiceInterface $bank, 
        GenderServiceInterface $gender,
        ReligionServiceInterface $religion
    ) {
        $this->activityLog  = $activityLog;
        $this->bank         = $bank;
        $this->employee     = $employee;
        $this->gender       = $gender;
        $this->religion     = $religion;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.employee.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $banks      = $this->bank->bankTransform;
        $religions  = $this->religion->religionTransform;
        $genders    = $this->gender->genderTransform;

        return view('admin.employee.create', compact('religions', 'genders', 'banks'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EmployeeRequest $request)
    {
        $data = $this->employee->store($request);

        notify()->success('PJLP berhasil dibuat');
        
        return redirect()->route('employee.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->employee->find($id);

        if (!$data) {
            notify()->warning('PJLP tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.employee.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->employee->find($id);

        if (!$data) {
            notify()->warning('PJLP tidak ditemukan');
            return redirect()->back();
        }
        
        $banks      = $this->bank->bankTransform;
        $religions  = $this->religion->religionTransform;
        $genders    = $this->gender->genderTransform;

        return view('admin.employee.edit', compact('data', 'religions', 'genders', 'banks'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EmployeeRequest $request, $id)
    {
        $data = $this->employee->update($request, $id);

        notify()->success('PJLP berhasil diupdate');

        return redirect()->route('employee.show', ['id' => $data->id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
