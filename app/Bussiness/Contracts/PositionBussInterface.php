<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface PositionBussInterface
{
    public function find($id);

    public function getByName($name);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}