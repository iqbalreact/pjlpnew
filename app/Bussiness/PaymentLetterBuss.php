<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PaymentLetterBussInterface;
use App\Repository\Contracts\PaymentLetterRepoInterface;

class PaymentLetterBuss implements PaymentLetterBussInterface
{
    public function __construct(PaymentLetterRepoInterface $paymentLetterRepo)
    {
        $this->paymentLetterRepo = $paymentLetterRepo;
    }

    public function find($id)
    {
        return $this->paymentLetterRepo->find($id);
    }

    public function store(Request $request)
    {
        $data = $this->paymentLetterRepo->store($request);
        
        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = $this->paymentLetterRepo->update($request, $id);
        
        return $data;
    }
}