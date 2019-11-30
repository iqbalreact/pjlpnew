<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface TerbilangServiceInterface
{
    public function convert($date);
}