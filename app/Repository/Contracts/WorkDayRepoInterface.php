<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface WorkDayRepoInterface
{
    public function find($id);

    public function findByYear($year);

    public function store(Request $request);    

    public function update(Request $request, $id);
}