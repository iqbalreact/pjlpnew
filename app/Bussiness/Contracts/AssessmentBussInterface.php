<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AssessmentBussInterface
{
    public function findAssessment(Request $request);

    public function store(Request $request);
}