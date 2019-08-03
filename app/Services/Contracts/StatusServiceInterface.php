<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface StatusServiceInterface
{
    public function statusTransform($status);
}