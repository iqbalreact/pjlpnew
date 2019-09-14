<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkDayBussInterface;
use App\Repository\Contracts\WorkDayRepoInterface;

class WorkDayBuss implements WorkDayBussInterface
{
    public function __construct(WorkDayRepoInterface $workDayRepo)
    {
        $this->workDayRepo = $workDayRepo;
    }

    public function find($id)
    {
        return $this->workDayRepo->find($id);
    }

    public function findByYear($year)
    {
        return $this->workDayRepo->findByYear($year);
    }

    public function store(Request $request)
    {
        $data = $this->workDayRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->workDayRepo->update($request, $id);
        
        return $data;
    }
}