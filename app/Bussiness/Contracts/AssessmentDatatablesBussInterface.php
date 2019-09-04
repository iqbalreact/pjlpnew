<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface AssessmentDatatablesBussInterface
{
    public function fetchTemplate(Request $request);
}