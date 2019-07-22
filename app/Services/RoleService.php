<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\RoleServiceInterface;

class RoleService implements RoleServiceInterface
{
    protected $roleTransform = [
        'superadmin'    => 'Superadmin',
        'adminppk'      => 'Admin PPK',
        'adminskpd'     => 'Admin SKPD',
        'operator'      => 'Operator'
    ]; 

    public function roleNameTransform($rolename)
    {
        return $this->roleTransform[$rolename];
    }
}