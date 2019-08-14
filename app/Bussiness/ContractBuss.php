<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;

use App\Repository\Contracts\ContractRepoInterface;

class ContractBuss implements ContractBussInterface
{
    public function __construct(
        ContractRepoInterface $contractRepo,
        WorkPackageBussInterface $workPackage
    ) {
        $this->contractRepo = $contractRepo;
        $this->workPackage  = $workPackage;
    }

    public function find($id)
    {
        return $this->contractRepo->find($id);
    }

    public function findActiveContract($employee_id)
    {
        return $this->contractRepo->findActiveContract($employee_id);
    }

    public function distinctYear()
    {
        return $this->contractRepo->distinctYear();
    }

    public function contractInformation($id)
    {
        return $this->contractRepo->contractInformation($id);
    }

    public function store(Request $request)
    {
        $workPackageInfo = $this->workPackage->findWorkPackageInformation($request->work_package_id);
        
        // assign working package info
        $request->working_package_id    = $workPackageInfo['work_package_id'];
        $request->activity_id           = $workPackageInfo['activity_id'];
        $request->program_id            = $workPackageInfo['program_id']; 
        $request->skpd_id               = $workPackageInfo['skpd_id']; 

        // save contract
        $data = $this->contractRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $workPackageInfo = $this->workPackage->findWorkPackageInformation($request->work_package_id);
        
        // assign working package info
        $request->working_package_id    = $workPackageInfo['work_package_id'];
        $request->activity_id           = $workPackageInfo['activity_id'];
        $request->program_id            = $workPackageInfo['program_id']; 
        $request->skpd_id               = $workPackageInfo['skpd_id']; 

        // update contract
        $data = $this->contractRepo->update($request, $id);
        
        return $data;
    }
}