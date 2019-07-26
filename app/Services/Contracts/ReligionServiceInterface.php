<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface ReligionServiceInterface
{
    public function religionNameTransform($religionName);
}