<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkAdministrationBussInterface;
use App\Repository\Contracts\WorkAdministrationRepoInterface;

class WorkAdministrationBuss implements WorkAdministrationBussInterface
{
    public function __construct(WorkAdministrationRepoInterface $workAdministrationRepo)
    {
        $this->workAdministrationRepo = $workAdministrationRepo;
    }

    public function find($id)
    {
        return $this->workAdministrationRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->workAdministrationRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->workAdministrationRepo->update($request, $id);
        
        return $data;
    }
}