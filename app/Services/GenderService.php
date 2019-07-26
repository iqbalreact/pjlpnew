<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\GenderServiceInterface;

class GenderService implements GenderServiceInterface
{
    public $genderTransfrom = [
        'laki-laki' => 'Laki-Laki', 
        'perempuan' => 'Perempuan'
    ];

    public function genderNameTransform($gender)
    {
        return $this->genderTransfrom[$gender];
    }
}