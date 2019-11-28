<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkInspectionRepoInterface;
use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\Contracts\PositionRepoInterface;

use App\Models\WorkInspection;

use Carbon\Carbon;

class WorkInspectionRepo implements WorkInspectionRepoInterface
{

    public function __construct(
        ContractRepoInterface $contractRepo,
        PositionRepoInterface $positionRepo
    ) {
        $this->contractRepo = $contractRepo;
        $this->positionRepo = $positionRepo;
    }

    public function find($id)
    {
        $data = WorkInspection::with('employee', 'skpd', 'functionary.occupations', 'functionaryPPTK.occupations', 'functionaryPPTK2.occupations')->find($id);

        if (is_null($data)) {
            return false;
        }

        $data->contract     = $this->contractRepo->find($data->contract_id);
        $data->position     = $this->positionRepo->find($data->contract->position_id);
        
        return $data;
    }

    public function store(Request $request)
    {
        $contract = $this->contractRepo->findActiveContract($request->employee_id);
        
        if (is_null($contract)) {
            return false;
        } 

        $data = new WorkInspection();
        $data->skpd_id              = $request->skpd_id;
        $data->employee_id          = $request->employee_id;
        $data->functionary_id       = $request->functionary_id;
        $data->functionary_pptk_id  = $request->functionary_pptk_id;
        $data->functionary_pptk2_id = 9999;
        $data->number               = $request->number;
        $data->contract_id          = $contract->id;
        $data->date                 = Carbon::parse($request->date);
        $data->section_1            = $request->section_1;
        $data->section_2            = $request->section_2;
        $data->section_3            = $request->section_3;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkInspection::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->date             = Carbon::parse($request->date);
        $data->section_1        = $request->section_1;
        $data->section_2        = $request->section_2;
        $data->section_3        = $request->section_3;
        $data->update();

        return $data;
    }
}