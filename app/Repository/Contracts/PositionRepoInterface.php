<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface PositionRepoInterface
{
    public function find($id);

    public function getByName($name);

    public function store(Request $request);    

    public function update(Request $request, $id);
}