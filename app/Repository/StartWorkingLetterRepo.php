<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\StartWorkingLetterRepoInterface;
use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\Contracts\PositionRepoInterface;

use App\Models\StartWorkingLetter;

use Carbon\Carbon;

class StartWorkingLetterRepo implements StartWorkingLetterRepoInterface
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
        $data = StartWorkingLetter::with('employee', 'skpd', 'functionary.occupations', 'contract.workPackage')->find($id);

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

        $data = new StartWorkingLetter();
        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->contract_id      = $contract->id;
        $data->date             = Carbon::parse($request->date);
        $data->section_1        = $request->section_1;
        $data->work_type        = $request->work_type;
        $data->term             = $request->term;
        $data->period           = $request->period;
        $data->fine             = $request->fine;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = StartWorkingLetter::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->date             = Carbon::parse($request->date);
        $data->section_1        = $request->section_1;
        $data->work_type        = $request->work_type;
        $data->term             = $request->term;
        $data->period           = $request->period;
        $data->fine             = $request->fine;
        $data->update();

        return $data;
    }
}