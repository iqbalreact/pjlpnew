<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\BankServiceInterface;

class BankService implements BankServiceInterface
{
    public $bankTransform = [
        'kalbar'    => 'Bank Kalbar', 
        'pasar'     => 'Bank Pasar'
    ];

    public function bankNameTransform($bank)
    {
        return $this->bankTransform[$bank];
    }
}