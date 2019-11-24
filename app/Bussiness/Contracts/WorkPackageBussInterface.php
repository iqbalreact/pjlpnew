<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface WorkPackageBussInterface
{
    public function count();
    
    public function find($id);

    public function getByName($name, $activity_id = null);

    public function store(Request $request);    

    public function update(Request $request, $id);    

    public function findWorkPackageInformation($id);
}