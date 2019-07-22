<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface RoleServiceInterface
{
    public function roleNameTransform($rolename);
}