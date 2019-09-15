<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AssessmentBussInterface;

use App\Repository\Contracts\AssessmentRepoInterface;

class AssessmentBuss implements AssessmentBussInterface
{
    public function __construct(
        AssessmentRepoInterface $assessmentRepo
    ) {
        $this->assessmentRepo = $assessmentRepo;
    }

    public function findAssessment(Request $request)
    {
        return $this->assessmentRepo->findAssessment($request);
    }

    public function store(Request $request)
    {
        $data = $this->assessmentRepo->store($request);
        
        return $data;
    }
}