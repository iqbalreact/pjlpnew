<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface ActivityBussInterface
{
    public function count();

    public function find($id);

    public function generateCode($program_id);

    public function getByName($name, $program_id = null);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}