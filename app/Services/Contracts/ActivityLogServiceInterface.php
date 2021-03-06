<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface ActivityLogServiceInterface
{
    public function getSubjectRoute($subject);

    public function find($id);

    public function all();
}