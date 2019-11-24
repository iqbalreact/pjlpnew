<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkHandoverBussInterface;
use App\Repository\Contracts\WorkHandoverRepoInterface;

class WorkHandoverBuss implements WorkHandoverBussInterface
{
    public function __construct(WorkHandoverRepoInterface $workHandoverRepo)
    {
        $this->workHandoverRepo = $workHandoverRepo;
    }

    public function find($id)
    {
        return $this->workHandoverRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->workHandoverRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->workHandoverRepo->update($request, $id);
        
        return $data;
    }
}