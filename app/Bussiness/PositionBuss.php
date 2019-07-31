<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PositionBussInterface;
use App\Repository\Contracts\PositionRepoInterface;

class PositionBuss implements PositionBussInterface
{
    public function __construct(PositionRepoInterface $positionRepo)
    {
        $this->positionRepo = $positionRepo;
    }

    public function find($id)
    {
        return $this->positionRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->positionRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->positionRepo->update($request, $id);
        
        return $data;
    }
}