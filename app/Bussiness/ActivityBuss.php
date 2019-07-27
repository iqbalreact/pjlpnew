<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Repository\Contracts\ActivityRepoInterface;

class ActivityBuss implements ActivityBussInterface
{
    public function __construct(ActivityRepoInterface $activityRepo)
    {
        $this->activityRepo = $activityRepo;
    }

    public function find($id)
    {
        return $this->activityRepo->find($id);
    }

    public function getByName($name, $program_id = null)
    {
        return $this->activityRepo->getByName($name, $program_id);
    }

    public function store(Request $request)
    {
        $data = $this->activityRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->activityRepo->update($request, $id);
        
        return $data;
    }
}