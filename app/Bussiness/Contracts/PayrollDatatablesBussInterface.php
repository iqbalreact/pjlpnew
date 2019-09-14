<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface PayrollDatatablesBussInterface
{
    public function fetchTemplate(Request $request);
}