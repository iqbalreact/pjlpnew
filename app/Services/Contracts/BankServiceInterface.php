<?php

namespace App\Services\Contracts;

use Illuminate\Http\Request;

interface BankServiceInterface
{
    public function bankNameTransform($bank);
}