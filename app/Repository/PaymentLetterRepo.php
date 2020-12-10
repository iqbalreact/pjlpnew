<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\PaymentLetterRepoInterface;
use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\Contracts\PositionCategoryRepoInterface;
use App\Repository\Contracts\PositionRepoInterface;

use App\Models\PaymentLetter;

use Carbon\Carbon;

class PaymentLetterRepo implements PaymentLetterRepoInterface
{

    public function __construct(
        ContractRepoInterface $contractRepo,
        PositionRepoInterface $positionRepo,
        PositionCategoryRepoInterface $positionCategoryRepo
    ) {
        $this->contractRepo = $contractRepo;
        $this->positionRepo = $positionRepo;
        $this->positionCategoryRepo = $positionCategoryRepo;
    }

    public function find($id)
    {
        // $data = PaymentLetter::with('employee', 'skpd', 'functionary.occupations', 'contract.workPackage', 'contract.activity', 'contract.position.positionCategory')->find($id);
        $data = PaymentLetter::with('employee', 'skpd', 'functionary.occupations', 'contract.workPackage', 'contract.activity')->find($id);

        if (is_null($data)) {
            return false;
        }

        $data->contract     = $this->contractRepo->find($data->contract_id);
        $data->position     = $this->positionRepo->find($data->contract->position_id);
        $data->positionCategory = $this->positionCategoryRepo->find($data->position->position_category_id);

        return $data;
    }

    public function store(Request $request)
    {
        $contract = $this->contractRepo->findActiveContract($request->employee_id);

        if (is_null($contract)) {
            return false;
        }

        $data = new PaymentLetter();
        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->contract_id      = $contract->id;
        $data->date             = Carbon::parse($request->date);
        $data->section_1        = 'section1';
        $data->body_letter      = $request->body_letter;
        $data->source_of_funds  = $request->source_of_funds;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = PaymentLetter::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->skpd_id          = $request->skpd_id;
        $data->employee_id      = $request->employee_id;
        $data->functionary_id   = $request->functionary_id;
        $data->number           = $request->number;
        $data->date             = Carbon::parse($request->date);
        $data->section_1        = 'section1';
        $data->body_letter      = $request->body_letter;
        $data->source_of_funds  = $request->source_of_funds;
        $data->update();

        return $data;
    }
}
