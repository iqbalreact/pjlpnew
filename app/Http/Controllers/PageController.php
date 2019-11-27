<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\Contracts\ProgramBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;

class PageController extends Controller
{
    public function __construct(
        SkpdBussInterface $skpd,
        OccupationBussInterface $occupation,
        WorkPackageBussInterface $workPackage,
        EmployeeBussInterface $employee,
        ActivityBussInterface $activity,
        ContractBussInterface $contract,
        ProgramBussInterface $program
    ) {
        $this->skpd         = $skpd;
        $this->occupation   = $occupation;
        $this->program      = $program;
        $this->employee     = $employee;
        $this->activity     = $activity;
        $this->workPackage  = $workPackage;
        $this->contract     = $contract;
    }

    public function dashboard(Request $request)
    {
        $skpd_id = \Auth::user()->skpd_id;
    
        $skpd = null;
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd = $this->skpd->find($skpd_id);
        }

        $ppkom  = $this->occupation->getByOccupation('ppkom');
        $pa     = $this->occupation->getByOccupation('pa');
        $pptk   = $this->occupation->getByOccupation('pptk');
        $pphp   = $this->occupation->getByOccupation('pphp');

        $countProgram               = $this->program->count();
        $countActivity              = $this->activity->count();
        $countWorkPackage           = $this->workPackage->count();
        $countContract              = $this->contract->count();
        $countContractNonActive     = $this->contract->count('non_active');
        $countEmployee              = count($this->employee->all());

        return view('dashboard', compact('skpd', 'ppkom', 'pa', 'pptk', 'pphp', 'countProgram', 'countActivity', 'countWorkPackage', 'countContract', 'countContractNonActive', 'countEmployee'));
    }
}
