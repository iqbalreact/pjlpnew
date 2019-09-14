<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\AccountRequest;
use App\Http\Requests\UpdateProfileRequest;
use App\Http\Requests\UpdatePasswordRequest;

use App\Bussiness\Contracts\AccountBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;

class AccountController extends Controller
{
    public function __construct(AccountBussInterface $account, SkpdBussInterface $skpd) 
    {
        $this->account  = $account;
        $this->skpd     = $skpd;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.account.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = $this->account->pluckRoles();

        return view('admin.account.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AccountRequest $request)
    {
        $data = $this->account->store($request);

        notify()->success('Pengguna berhasil dibuat');
        
        return redirect()->route('account.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->account->find($id);

        if (!$data) {
            notify()->warning('Pengguna tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.account.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->account->find($id);

        if (!$data) {
            notify()->warning('Pengguna tidak ditemukan');
            return redirect()->back();
        }

        $roles  = $this->account->pluckRoles();
        $skpd   = $this->skpd->find($data->skpd_id);

        return view('admin.account.edit', compact('data', 'roles', 'skpd'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AccountRequest $request, $id)
    {
        $data = $this->account->update($request, $id);

        notify()->success('Pengguna berhasil diupdate');

        return redirect()->route('account.show', ['id' => $data->id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function updateProfile()
    {
        $id = \Auth::user()->id;

        $data = $this->account->find($id);

        if (!$data) {
            notify()->warning('Profile tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.account.updateProfile', compact('data'));
    }

    public function postUpdateProfile(UpdateProfileRequest $request)
    {
        $id = \Auth::user()->id;

        $data = $this->account->updateProfile($request, $id);

        return redirect()->route('account.show', ['id' => $data->id]);        
    }

    public function updatePassword()
    {
        $id = \Auth::user()->id;

        $data = $this->account->find($id);

        if (!$data) {
            notify()->warning('Profile tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.account.updatePassword', compact('data'));
    }

    public function postUpdatePassword(UpdatePasswordRequest $request)
    {
        $id = \Auth::user()->id;

        $data = $this->account->updatePassword($request, $id);

        return redirect()->route('account.show', ['id' => $data->id]);        
    }
}
