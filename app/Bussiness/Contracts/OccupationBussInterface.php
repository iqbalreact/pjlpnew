<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface OccupationBussInterface
{
    public function find($id);

    public function getByOccupation($occupation);

    public function getByName($name, $workPackageId = null, $occupation = null);

    public function checkOccupation($functionary_id, $start_date, $end_date, $id = null);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}