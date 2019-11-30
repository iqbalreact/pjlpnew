<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\WorkHandoverPpkomBussInterface;
use App\Repository\Contracts\WorkHandoverPpkomRepoInterface;

class WorkHandoverPpkomBuss implements WorkHandoverPpkomBussInterface
{
    public function __construct(WorkHandoverPpkomRepoInterface $workHandoverRepo)
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