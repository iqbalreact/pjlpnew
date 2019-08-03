<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\StatusServiceInterface;

class StatusService implements StatusServiceInterface
{
    public $statusTransform = [
        'active'     => 'Aktif', 
        'non_active' => 'Non Aktif'
    ];

    public function statusTransform($status)
    {
        return $this->statusTransform[$status];
    }
}