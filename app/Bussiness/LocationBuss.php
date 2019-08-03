<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\LocationBussInterface;
use App\Repository\Contracts\LocationRepoInterface;

class LocationBuss implements LocationBussInterface
{
    public function __construct(LocationRepoInterface $locationRepo)
    {
        $this->locationRepo = $locationRepo;
    }

    public function find($id)
    {
        return $this->locationRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->locationRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->locationRepo->update($request, $id);
        
        return $data;
    }
}