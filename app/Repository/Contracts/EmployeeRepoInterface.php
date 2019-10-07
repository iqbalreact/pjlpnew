<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface EmployeeRepoInterface
{
    public function all();
    
    public function countEmployee($skpd_id);

    public function find($id);

    public function countByBank();

    public function countByGender();

    public function countByReligion();

    public function getByName($name);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}