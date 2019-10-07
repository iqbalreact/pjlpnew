<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Repository\Contracts\EmployeeRepoInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Services\Contracts\BankServiceInterface;
use App\Services\Contracts\GenderServiceInterface;
use App\Services\Contracts\ReligionServiceInterface;

use Carbon\Carbon;

class EmployeeBuss implements EmployeeBussInterface
{
    public function __construct(
        EmployeeRepoInterface $employeeRepo,
        BankServiceInterface $bankService, 
        GenderServiceInterface $genderService,
        ReligionServiceInterface $religionService,       
        SkpdBussInterface $skpd
    ) {
        $this->employeeRepo         = $employeeRepo;
        $this->bankService          = $bankService;
        $this->genderService        = $genderService;
        $this->religionService      = $religionService;        
        $this->skpd                 = $skpd;
    }

    public function all()
    {
        return $this->employeeRepo->all();
    }

    public function find($id)
    {
        return $this->employeeRepo->find($id);
    }

    public function chartData()
    {
        $bank       = $this->countByBank();
        $gender     = $this->countByGender();
        $religion   = $this->countByReligion();

        // count
        $countBank      = count($bank);      
        $countGender    = count($gender);
        $countReligion  = count($religion);

        // find total
        $totalBank      = $bank->sum('total');
        $totalGender    = $gender->sum('total');
        $totalReligion  = $religion->sum('total');

        // find percentage data
        $percentageBank = [];
        foreach($bank as $data) {
            $percentage = ( $data['total'] / $totalBank ) * 100;
            array_push($percentageBank, round($percentage));
        }

        $percentageGender = [];
        foreach($gender as $data) {
            $percentage = ( $data['total'] / $totalGender ) * 100;
            array_push($percentageGender, round($percentage));
        }

        $percentageReligion = [];
        foreach($religion as $data) {
            $percentage = ( $data['total'] / $totalReligion ) * 100;
            array_push($percentageReligion, round($percentage));
        }

        // find max count data
        $maxData = max([$countBank, $countGender, $countReligion]);

        $finalData = [];
        for($i=0; $i<$maxData; $i++) {
            array_push($finalData, $religion[$i]);
        }

        return $finalData;
    }

    public function countByBank()
    {
        $data = $this->employeeRepo->countByBank(); 
        
        $data->map(function ($data) {
            $data->bank_name = $this->bankService->bankNameTransform($data->bank_name);
            return $data;
        });

        return $data;
    }

    public function countByGender()
    {
        $data = $this->employeeRepo->countByGender(); 
        
        $data->map(function ($data) {
            $data->gender = $this->genderService->genderNameTransform($data->gender);
            return $data;
        });

        return $data;
    }

    public function countByReligion()
    {
        $data = $this->employeeRepo->countByReligion(); 
        
        $data->map(function ($data) {
            $data->religion = $this->religionService->religionNameTransform($data->religion);
            return $data;
        });

        return $data;
    }

    public function getByName($name)
    {
        return $this->employeeRepo->getByName($name);
    }

    public function store(Request $request)
    {
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd_id = \Auth::user()->skpd_id;
            $request->nipj      = $this->generateNIPJ($skpd_id);

            $request->skpd_id   = $skpd_id;
        } else {
            $request->nipj      = $this->generateNIPJ($request->skpd_id);
        }

        $data = $this->employeeRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->employeeRepo->update($request, $id);
        
        return $data;
    }

    public function generateNIPJ($skpd_id)
    {
        $count  = $this->employeeRepo->countEmployee($skpd_id) + 1; 
        $count  = sprintf('%03d', $count);
        
        $skpd   = $this->skpd->find($skpd_id);
        $year   = Carbon::now()->format('Y');

        return $skpd->number.$count.$year;
    }
}