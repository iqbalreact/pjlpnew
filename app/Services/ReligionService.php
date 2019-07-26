<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\ReligionServiceInterface;

class ReligionService implements ReligionServiceInterface
{
    public $religionTransform = [
        'islam'         => 'Islam', 
        'katolik'       => 'Katolik', 
        'protestan'     => 'Protestan',
        'hindu'         => 'Hindu', 
        'budha'         => 'Budha', 
        'khong_hu_cu'   => 'Kong hu cu' 
    ];

    public function religionNameTransform($religionName)
    {
        return $this->religionTransform[$religionName];
    }
}