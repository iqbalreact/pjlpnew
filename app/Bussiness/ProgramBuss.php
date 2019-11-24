<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ProgramBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Repository\Contracts\ProgramRepoInterface;

class ProgramBuss implements ProgramBussInterface
{
    public function __construct(
        ProgramRepoInterface $programRepo,
        SkpdBussInterface $skpd
    ) {
        $this->programRepo  = $programRepo;
        $this->skpd         = $skpd;
    }

    public function count()
    {
        return $this->programRepo->count();
    }

    public function find($id)
    {
        return $this->programRepo->find($id);
    }

    public function generateCode($skpd_id)
    {
        $skpd           = $this->skpd->find($skpd_id);
        $countProgram   = $this->programRepo->count($skpd_id) + 1;

        return $skpd->number.'.'.$countProgram;
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