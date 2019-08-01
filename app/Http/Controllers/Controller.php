<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function isAdmin()
    {
        $roles = \Auth::user()->getRoleNames()->toArray();

        if(!in_array('superadmin', $roles)) {
            return false;
        };

        return true;
    }

    public function getSkpdId()
    {
        return \Auth::user()->skpd_id;
    }
}
