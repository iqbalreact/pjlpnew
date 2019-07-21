<?php

namespace App\Enums;

use BenSampo\Enum\Enum;

final class RoleType extends Enum
{
    const SuperAdmin    = 'superadmin';
    const AdminSKPD     = 'adminskpd';
    const AdminPPK      = 'adminppk';
    const Operator      = 'operator';
}
