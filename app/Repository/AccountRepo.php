<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\AccountRepoInterface;
use App\Services\Contracts\RoleServiceInterface;

use App\Models\User;
use Spatie\Permission\Models\Role;

class AccountRepo implements AccountRepoInterface
{
    public function __construct(RoleServiceInterface $roleService)
    {   
        $this->roleService = $roleService;
    }

    public function getRoles()
    {
        $roles = Role::all();

        $roles->each(function ($roles) { 
            $roles->description = $this->roleService->roleNameTransform($roles->name); 
        });

        return $roles;
    }

    public function find($id)
    {
        $data = User::with('skpd')->find($id);

        if (is_null($data)) {
            return false;
        }

        $data->rolename             = !is_null($data->roles->first()) ? $data->roles->first()->name : '';
        $data->rolenametransform    = !is_null($data->rolename) ? $this->roleService->roleNameTransform($data->rolename) : '';
        
        return $data;
    }

    public function store(Request $request)
    {
        $data = new User();
        $data->nip      = $request->nip;
        $data->name     = $request->name; 
        $data->email    = $request->email;
        $data->password = bcrypt('pjlppontianak');
        $data->skpd_id  = $request->skpd_id;
        $data->save();

        if (isset($request->role)) {
            $data->assignRole($request->role);
        }

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }
    
    public function update(Request $request, $id)
    {
        $data = User::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->nip      = $request->nip;
        $data->name     = $request->name; 
        $data->email    = $request->email;
        $data->skpd_id  = $request->skpd_id;
        $data->update();
        
        if (isset($request->role)) {
            $data->syncRoles([$request->role]);
        }

        if (isset($request->avatar)) {
            $data->addMediaFromRequest('avatar')->toMediaCollection('avatars');
        }

        return $data;
    }
}