<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\SalaryComponentBussInterface;
use App\Repository\Contracts\SalaryComponentRepoInterface;

class SalaryComponentBuss implements SalaryComponentBussInterface
{
    public function __construct(SalaryComponentRepoInterface $salaryComponent)
    {
        $this->salaryComponent = $salaryComponent;
    }

    public function find($id)
    {
        return $this->salaryComponent->find($id);
    }

    public function getByName($name)
    {
        return $this->salaryComponent->getByName($name);
    }

    public function store(Request $request)
    {
        $data = $this->salaryComponent->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->salaryComponent->update($request, $id);
        
        return $data;
    }
}