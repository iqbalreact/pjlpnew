<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Repository\Contracts\EmployeeRepoInterface;

class EmployeeBuss implements EmployeeBussInterface
{
    public function __construct(EmployeeRepoInterface $employeeRepo)
    {
        $this->employeeRepo = $employeeRepo;
    }

    public function store(Request $request)
    {
        $data = $this->employeeRepo->store($request);
        return $data;
    }
}