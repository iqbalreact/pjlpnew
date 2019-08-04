<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface LocationBussInterface
{
    public function find($id);

    public function getByName($name, $workPackageId = null);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}