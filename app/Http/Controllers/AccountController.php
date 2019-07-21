<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\AccountRequest;

use App\Bussiness\Contracts\AccountBussInterface;

class AccountController extends Controller
{
    public function __construct(AccountBussInterface $account) 
    {
        $this->account = $account;
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

        $roles = $this->account->pluckRoles();

        return view('admin.account.edit', compact('data', 'roles'));
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
}
