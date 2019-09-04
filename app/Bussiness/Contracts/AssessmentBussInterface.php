<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AssessmentBussInterface
{
    public function store(Request $request);
}