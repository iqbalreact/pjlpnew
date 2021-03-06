<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface WorkAdministrationBussInterface
{
    public function find($id);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}