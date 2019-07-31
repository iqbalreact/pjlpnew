<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PositionCategoryBussInterface;
use App\Repository\Contracts\PositionCategoryRepoInterface;

class PositionCategoryBuss implements PositionCategoryBussInterface
{
    public function __construct(PositionCategoryRepoInterface $positionCategoryRepo)
    {
        $this->positionCategoryRepo = $positionCategoryRepo;
    }

    public function all()
    {
        return $this->positionCategoryRepo->all();
    }

    public function find($id)
    {
        return $this->positionCategoryRepo->find($id);
    }

    public function pluckCategory()
    {
        return $this->all()->pluck('name', 'id');
    }

    public function store(Request $request)
    {
        $data = $this->positionCategoryRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->positionCategoryRepo->update($request, $id);
        
        return $data;
    }
}