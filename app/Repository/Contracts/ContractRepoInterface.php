<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface ContractRepoInterface
{
    public function countContract($status = 'active');

    public function find($id);

    public function findByEmployeeId($employee_id);

    public function findActiveContract($employee_id);

    public function findEmployeeByContract();

    public function distinctYear();

    public function contractInformation($id);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}