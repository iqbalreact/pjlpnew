<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface EmployeeRepoInterface
{
    public function store(Request $request);    
}