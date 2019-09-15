<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface PayrollBussInterface
{
    public function find($id);

    public function store(Request $request);
}