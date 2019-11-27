<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\OccupationServiceInterface;

class OccupationService implements OccupationServiceInterface
{
    public $occupationTransform = [
        'pa'        => 'PA', 
        'ppkom'     => 'PPKOM',
        'pptk'      => 'PPTK',
        'pphp'      => 'PPHP'
    ];

    public $occupationLongTransform = [
        'pa'        => 'Pengguna Anggaran', 
        'ppkom'     => 'Pejabat Pembuat Komitmen',
        'pptk'      => 'Pejabat Pelaksana Teknik Kegiatan',
        'pphp'      => 'Pejabat Pemeriksa Hasil Pekerjaan'
    ];

    public function occupationTransform($occupation)
    {
        return $this->occupationTransform[$occupation];
    }

    public function occupationLongTransform($occupation)
    {
        return $this->occupationLongTransform[$occupation];
    }
}