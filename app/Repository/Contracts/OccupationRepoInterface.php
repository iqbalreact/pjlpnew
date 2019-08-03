<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface OccupationRepoInterface
{
    public function find($id);

    public function checkOccupation($functionary_id, $start_date, $end_date, $id = null);

    public function store(Request $request);    

    public function update(Request $request, $id);
}