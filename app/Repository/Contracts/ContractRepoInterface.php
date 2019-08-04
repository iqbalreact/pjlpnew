<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface ContractRepoInterface
{
    public function find($id);

    public function findActiveContract($employee_id);

    public function contractInformation($id);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}