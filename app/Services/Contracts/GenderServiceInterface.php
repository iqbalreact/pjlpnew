<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface GenderServiceInterface
{
    public function genderNameTransform($gender);
}