<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Repository\Contracts\FunctionaryRepoInterface;

class FunctionaryBuss implements FunctionaryBussInterface
{
    public function __construct(FunctionaryRepoInterface $functionaryRepo)
    {
        $this->functionaryRepo = $functionaryRepo;
    }

    public function find($id)
    {
        return $this->functionaryRepo->find($id);
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