<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface ProgramBussInterface
{
    public function find($id);

    public function generateCode($skpd_id);

    public function getByName($name, $skpd_id = null);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}