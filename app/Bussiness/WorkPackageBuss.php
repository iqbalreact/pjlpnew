<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Repository\Contracts\WorkPackageRepoInterface;

class WorkPackageBuss implements WorkPackageBussInterface
{
    public function __construct(WorkPackageRepoInterface $workPackageRepo)
    {
        $this->workPackageRepo = $workPackageRepo;
    }

    public function find($id)
    {
        return $this->workPackageRepo->find($id);
    }

    public function getByName($name, $activity_id = null)
    {
        return $this->workPackageRepo->getByName($name, $activity_id);
    }

    public function store(Request $request)
    {
        $data = $this->workPackageRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->workPackageRepo->update($request, $id);
        
        return $data;
    }
}