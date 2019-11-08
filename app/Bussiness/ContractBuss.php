<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;

use App\Repository\Contracts\ContractRepoInterface;
use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use Carbon\Carbon;

class ContractBuss implements ContractBussInterface
{
    public function __construct(
        ContractRepoInterface $contractRepo,
        LeaveEmployeeRepoInterface $leaveEmployeeRepo,
        WorkPackageBussInterface $workPackage
    ) {
        $this->contractRepo         = $contractRepo;
        $this->leaveEmployeeRepo    = $leaveEmployeeRepo;
        $this->workPackage          = $workPackage;
    }

    public function find($id)
    {
        return $this->contractRepo->find($id);
    }

    public function findActiveContract($employee_id)
    {
        return $this->contractRepo->findActiveContract($employee_id);
    }

    public function checkBeforeSixMonth($id, $date)
    {
        $contract = $this->find($id);

        if (!is_null($contract)) {
            if(Carbon::parse($contract->start_date)->addMonth(6) > Carbon::parse($date)) {
                return true;
            }
        }

        return false;
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

        if ($data) {
            $leave = $this->leaveEmployeeRepo->store($data->employee_id, $data->id);
        }
        
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