<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface FunctionaryRepoInterface
{
    public function find($id);

    public function getByName($name, $occupation = null);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}