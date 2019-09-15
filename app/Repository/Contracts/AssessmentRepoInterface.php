<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface AssessmentRepoInterface
{
    public function findAssessment(Request $request);

    public function store(Request $request);    
}