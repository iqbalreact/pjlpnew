<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Repository\Contracts\OccupationRepoInterface;

class OccupationBuss implements OccupationBussInterface
{
    public function __construct(
        OccupationRepoInterface $occupationRepo,
        WorkPackageBussInterface $workPackage
    ) {
        $this->occupationRepo   = $occupationRepo;
        $this->workPackage      = $workPackage;
    }

    public function find($id)
    {
        return $this->occupationRepo->find($id);
    }

    public function getByName($name, $workPackageId = null)
    {
        $skpd_id = null;
        if (!empty($workPackageId)) {
            $skpdInfo   = $this->workPackage->findWorkPackageInformation($workPackageId);
            $skpd_id    = $skpdInfo['skpd_id'];
        }

        return $this->occupationRepo->getByName($name, $skpd_id);
    }

    public function checkOccupation($functionary_id, $start_date, $end_date, $id = null)
    {
        return $this->occupationRepo->checkOccupation($functionary_id, $start_date, $end_date, $id);
    }

    public function store(Request $request)
    {
        $data = $this->occupationRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->occupationRepo->update($request, $id);
        
        return $data;
    }


}