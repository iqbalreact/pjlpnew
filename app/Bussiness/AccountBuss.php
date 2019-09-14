<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AccountBussInterface;
use App\Repository\Contracts\AccountRepoInterface;

class AccountBuss implements AccountBussInterface
{
    public function __construct(AccountRepoInterface $accountRepo)
    {
        $this->accountRepo = $accountRepo;
    }

    public function getRoles()
    {
        return $this->accountRepo->getRoles();
    }

    public function find($id)
    {
        return $this->accountRepo->find($id);
    }

    public function pluckRoles()
    {
        return $this->getRoles()->pluck('description', 'name');
    }

    public function store(Request $request)
    {
        return $this->accountRepo->store($request);
    }

    public function update(Request $request, $id)
    {
        return $this->accountRepo->update($request, $id);
    }

    public function updateProfile(Request $request, $id)
    {
        return $this->accountRepo->updateProfile($request, $id);
    }

    public function updatePassword(Request $request, $id)
    {
        return $this->accountRepo->updatePassword($request, $id);
    }
}