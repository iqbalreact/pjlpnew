<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\Contracts\ProgramBussInterface;

use App\Repository\Contracts\WorkPackageRepoInterface;

class WorkPackageBuss implements WorkPackageBussInterface
{
    public function __construct(
        ActivityBussInterface $activity,
        ProgramBussInterface $program,
        WorkPackageRepoInterface $workPackageRepo
    ) {
        $this->activity         = $activity;
        $this->program          = $program;
        $this->workPackageRepo  = $workPackageRepo;
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

    public function findWorkPackageInformation($id)
    {
        $workPackage = $this->workPackageRepo->find($id);
        $activity    = $this->activity->find($workPackage->activity_id);
        $program     = $this->program->find($activity->program_id);

        $data = [
            'work_package_id'       => $workPackage->id,
            'activity_id'           => $activity->id,
            'program_id'            => $program->id,
            'skpd_id'               => $program->skpd_id
        ];

        return $data;
    }
}