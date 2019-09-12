<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface EmployeeBussInterface
{
    public function find($id);

    public function countByBank();

    public function countByGender();

    public function countByReligion();

    public function getByName($name);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}