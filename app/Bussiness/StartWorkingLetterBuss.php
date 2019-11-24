<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\StartWorkingLetterBussInterface;
use App\Repository\Contracts\StartWorkingLetterRepoInterface;

class StartWorkingLetterBuss implements StartWorkingLetterBussInterface
{
    public function __construct(StartWorkingLetterRepoInterface $startWorkingLetterRepo)
    {
        $this->startWorkingLetterRepo = $startWorkingLetterRepo;
    }

    public function find($id)
    {
        return $this->startWorkingLetterRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->startWorkingLetterRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->startWorkingLetterRepo->update($request, $id);
        
        return $data;
    }
}