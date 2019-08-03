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
        $data = $this->employeeRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->employeeRepo->update($request, $id);
        
        return $data;
    }
}