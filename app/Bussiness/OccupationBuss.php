<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\OccupationBussInterface;
use App\Repository\Contracts\OccupationRepoInterface;

class OccupationBuss implements OccupationBussInterface
{
    public function __construct(OccupationRepoInterface $occupationRepo)
    {
        $this->occupationRepo = $occupationRepo;
    }

    public function find($id)
    {
        return $this->occupationRepo->find($id);
    }

    public function checkOccupation($functionary_id, $start_date, $end_date, $status = 'active')
    {
        return $this->occupationRepo->checkOccupation($functionary_id, $start_date, $end_date, $status);
    }

    public function store(Request $request)
    {
        $data = $this->occupationRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->occupationRepo->update($request, $id);
        
        return $data;
    }
}