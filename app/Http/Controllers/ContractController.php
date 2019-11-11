<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\ContractRequest;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Bussiness\Contracts\LocationBussInterface;
use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\Contracts\ProgramBussInterface;
use App\Bussiness\Contracts\PositionBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;

use App\Services\Contracts\StatusServiceInterface;

use Carbon\Carbon;

class ContractController extends Controller
{
    public function __construct(
        ActivityBussInterface $activity,
        EmployeeBussInterface $employee,
        FunctionaryBussInterface $functionary,
        ContractBussInterface $contract,
        LocationBussInterface $location,
        OccupationBussInterface $occupation,
        ProgramBussInterface $program,
        PositionBussInterface $position,
        SkpdBussInterface $skpd,
        WorkPackageBussInterface $workPackage,
        StatusServiceInterface $status
    ) {
        $this->activity     = $activity;
        $this->employee     = $employee;
        $this->contract     = $contract;
        $this->functionary  = $functionary;
        $this->location     = $location;
        $this->occupation   = $occupation;
        $this->program      = $program;
        $this->position     = $position;
        $this->skpd         = $skpd;
        $this->status       = $status;
        $this->workPackage  = $workPackage;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.contract.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $employee_id = $request->employee_id;

        $employee   = null;

        if (!empty($employee_id)) {
            $employee = $this->employee->find($employee_id);
        }

        $status     = $this->status->statusTransform;

        return view('admin.contract.create', compact('status', 'employee'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ContractRequest $request)
    {
        $data = $this->contract->store($request);

        notify()->success('Kontrak kerja berhasil dibuat');

        return redirect()->route('contract.detail', ['id' => $data->id]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $years = $this->contract->distinctYear();
        
        return view('admin.contract.show', compact('id', 'years'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function detail($id)
    {
        $data = $this->contract->find($id);

        if (!$data) {
            notify()->warning('Kontrak tidak ditemukan');
            return redirect()->back();
        }

        $activity       = $this->activity->find($data->activity_id);
        $employee       = $this->employee->find($data->employee_id);
        $occupation     = $this->occupation->find($data->occupation_id);
        $functionary    = $this->functionary->find($occupation->functionary_id);
        $location       = $this->location->find($data->location_id);
        $program        = $this->program->find($data->program_id);
        $position       = $this->position->find($data->position_id);
        $skpd           = $this->skpd->find($data->skpd);
        $workPackage    = $this->workPackage->find($data->work_package_id);

        return view('admin.contract.detail', compact('data', 'employee', 'location', 'workPackage', 'activity', 'program', 'skpd', 'position', 'functionary'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->contract->find($id);

        if (!$data) {
            notify()->warning('Kontrak tidak ditemukan');
            return redirect()->back();
        }

        $data->start_date   = Carbon::parse($data->start_date)->format('d-m-Y');
        $data->end_date     = Carbon::parse($data->end_date)->format('d-m-Y');

        $activity       = $this->activity->find($data->activity_id);
        $employee       = $this->employee->find($data->employee_id);
        $occupation     = $this->occupation->find($data->occupation_id);
        $functionary    = $this->functionary->find($occupation->functionary_id);
        $location       = $this->location->find($data->location_id);
        $program        = $this->program->find($data->program_id);
        $position       = $this->position->find($data->position_id);
        $skpd           = $this->skpd->find($data->skpd);
        $workPackage    = $this->workPackage->find($data->work_package_id);
        $status         = $this->status->statusTransform;

        return view('admin.contract.edit', compact('data', 'employee', 'occupation', 'location', 'workPackage', 'activity', 'program', 'skpd', 'position', 'functionary', 'status'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ContractRequest $request, $id)
    {
        $data = $this->contract->update($request, $id);

        notify()->success('Kontrak kerja berhasil diupdate');

        return redirect()->route('contract.detail', ['id' => $data->id]);
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

    public function findActiveContract(Request $request)
    {
        $data = $this->contract->findActiveContract($request->employee_id);
        
        $data = is_null($data) ? 'true' : 'false'; 

        return response()->json($data);
    }
}
