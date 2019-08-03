<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Repository\Contracts\ContractRepoInterface;

class ContractBuss implements ContractBussInterface
{
    public function __construct(ContractRepoInterface $contractRepo)
    {
        $this->contractRepo = $contractRepo;
    }

    public function find($id)
    {
        return $this->contractRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->contractRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->contractRepo->update($request, $id);
        
        return $data;
    }
}