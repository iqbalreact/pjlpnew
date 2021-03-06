<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface WorkDayBussInterface
{
    public function find($id);

    public function findByYear($year);

    public function store(Request $request);    

    public function update(Request $request, $id);    
}