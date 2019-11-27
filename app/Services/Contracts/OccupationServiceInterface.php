<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface OccupationServiceInterface
{
    public function occupationTransform($occupation);

    public function occupationLongTransform($occupation);
}