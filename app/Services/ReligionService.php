<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\ReligionServiceInterface;

class ReligionService implements ReligionServiceInterface
{
    public $religionTransfrom = [
        'budha'         => 'Budha', 
        'islam'         => 'Islam', 
        'kristen'       => 'Kristen', 
        'katolik'       => 'Katolik', 
        'khong_hu_cu'   => 'Kong hu cu', 
        'kristen'       => 'Kristen'
    ];

    public function religionNameTransform($religionName)
    {
        return $this->religionTransfrom[$religionName];
    }
}