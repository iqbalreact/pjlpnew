<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Repository\Contracts\SkpdRepoInterface;

class SkpdBuss implements SkpdBussInterface
{
    public function __construct(SkpdRepoInterface $skpdRepo)
    {
        $this->skpdRepo = $skpdRepo;
    }

    public function find($id)
    {
        return $this->skpdRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->skpdRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->skpdRepo->update($request, $id);
        
        return $data;
    }
}