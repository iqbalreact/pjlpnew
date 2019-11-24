<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkInspectionBussInterface;
use App\Repository\Contracts\WorkInspectionRepoInterface;

class WorkInspectionBuss implements WorkInspectionBussInterface
{
    public function __construct(WorkInspectionRepoInterface $workInspectionRepo)
    {
        $this->workInspectionRepo = $workInspectionRepo;
    }

    public function find($id)
    {
        return $this->workInspectionRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->workInspectionRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->workInspectionRepo->update($request, $id);
        
        return $data;
    }
}