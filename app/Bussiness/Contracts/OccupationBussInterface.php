<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface OccupationBussInterface
{
    public function find($id);

    public function checkOccupation($functionary_id, $start_date, $end_date, $status = 'active');

    public function store(Request $request);    

    public function update(Request $request, $id);    
}