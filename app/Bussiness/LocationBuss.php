<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\LocationBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Repository\Contracts\LocationRepoInterface;

class LocationBuss implements LocationBussInterface
{
    public function __construct(
        LocationRepoInterface $locationRepo,
        WorkPackageBussInterface $workPackage
    ) {
        $this->locationRepo = $locationRepo;
        $this->workPackage  = $workPackage;
    }

    public function find($id)
    {
        return $this->locationRepo->find($id);
    }

    public function getByName($name, $workPackageId = null)
    {
        $skpd_id    = null;

        if (!empty($workPackageId)) {
            $info       = $this->workPackage->findWorkPackageInformation($workPackageId);
            $skpd_id    = $info['skpd_id'];
        }

        return $this->locationRepo->getByName($name, $skpd_id);
    }

    public function store(Request $request)
    {
        $data = $this->locationRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->locationRepo->update($request, $id);
        
        return $data;
    }
}