<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Repository\Contracts\EmployeeRepoInterface;
use App\Bussiness\Contracts\SkpdBussInterface;

use Carbon\Carbon;

class EmployeeBuss implements EmployeeBussInterface
{
    public function __construct(
        EmployeeRepoInterface $employeeRepo,
        SkpdBussInterface $skpd
    ) {
        $this->employeeRepo = $employeeRepo;
        $this->skpd         = $skpd;
    }

    public function find($id)
    {
        return $this->employeeRepo->find($id);
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