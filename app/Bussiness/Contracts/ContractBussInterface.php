<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface ContractBussInterface
{
    public function find($id);

    public function findActiveContract($employee_id);

    public function findEmployeeByContract();

    public function checkBeforeSixMonth($id, $date);

    public function distinctYear();

    public function contractInformation($id);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}