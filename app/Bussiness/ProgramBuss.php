<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ProgramBussInterface;
use App\Repository\Contracts\ProgramRepoInterface;

class ProgramBuss implements ProgramBussInterface
{
    public function __construct(ProgramRepoInterface $programRepo)
    {
        $this->programRepo = $programRepo;
    }

    public function find($id)
    {
        return $this->programRepo->find($id);
    }

    public function getByName($name, $skpd_id = null)
    {
        return $this->programRepo->getByName($name, $skpd_id);
    }

    public function store(Request $request)
    {
        $data = $this->programRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->programRepo->update($request, $id);
        
        return $data;
    }
}