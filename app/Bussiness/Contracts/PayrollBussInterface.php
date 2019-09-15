<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface PayrollBussInterface
{
    public function store(Request $request);
}