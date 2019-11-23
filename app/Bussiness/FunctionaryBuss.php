<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Repository\Contracts\FunctionaryRepoInterface;

use App\Services\Contracts\OccupationServiceInterface;

class FunctionaryBuss implements FunctionaryBussInterface
{
    public function __construct(
        FunctionaryRepoInterface $functionaryRepo,
        OccupationServiceInterface $occupationService
    ) {
        $this->functionaryRepo      = $functionaryRepo;
        $this->occupationService    = $occupationService;
    }

    public function find($id)
    {
        $data = $this->functionaryRepo->find($id);

        if(isset($data->occupations) && $data->occupations != null) {
            foreach($data->occupations as $occupation) {
                $occupation->position_transform = $this->occupationService->occupationTransform($occupation->position);
            }
        }

        return $data;
    }

    public function getByName($name)
    {
        return $this->functionaryRepo->getByName($name);
    }

    public function store(Request $request)
    {
        $data = $this->functionaryRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->functionaryRepo->update($request, $id);
        
        return $data;
    }
}