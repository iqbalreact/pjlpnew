<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface EmployeeRepoInterface
{
    public function find($id);
    
    public function store(Request $request);    
}