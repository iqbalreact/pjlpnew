<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkHandoverPpkomRepoInterface;
use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\Contracts\PositionRepoInterface;

use App\Models\WorkHandoverPpkom;

use Carbon\Carbon;

class WorkHandoverPpkomRepo implements WorkHandoverPpkomRepoInterface
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
        $data = WorkHandoverPpkom::with('functionary2.occupations', 'skpd', 'functionary.occupations')->find($id);

        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function store(Request $request)
    {
        $data = new WorkHandoverPpkom();
        $data->skpd_id          = $request->skpd_id;
        $data->functionary_id   = $request->functionary_id;
        $data->functionary2_id  = $request->functionary2_id;
        $data->number           = $request->number;
        $data->date             = Carbon::parse($request->date);
        $data->section_2        = $request->section_2;
        $data->section_3        = $request->section_3;
        $data->section_4        = $request->section_4;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkHandoverPpkom::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->skpd_id          = $request->skpd_id;
        $data->functionary_id   = $request->functionary_id;
        $data->functionary2_id  = $request->functionary2_id;
        $data->number           = $request->number;
        $data->date             = Carbon::parse($request->date);
        $data->section_2        = $request->section_2;
        $data->section_3        = $request->section_3;
        $data->section_4        = $request->section_4;
        $data->update();

        return $data;
    }
}