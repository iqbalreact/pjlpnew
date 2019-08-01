<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface OccupationRepoInterface
{
    public function find($id);

    public function store(Request $request);    

    public function update(Request $request, $id);
}