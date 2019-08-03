<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\OccupationServiceInterface;

class OccupationService implements OccupationServiceInterface
{
    public $occupationTransform = [
        'pa'        => 'PA', 
        'kpa'       => 'KPA',
        'ppk'       => 'PPK',
        'pptk'      => 'PPTK',
        'bendahara' => 'BENDAHARA'
    ];

    public function occupationTransform($occupation)
    {
        return $this->occupationTransform[$occupation];
    }
}