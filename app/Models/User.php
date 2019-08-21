<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

use Spatie\Permission\Traits\HasRoles;

use App\Models\Skpd;

class User extends Authenticatable implements HasMedia
{
    use Notifiable, HasRoles, HasMediaTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nip',
        'name', 
        'email', 
        'password',
        'skpd_id',
        'ppk_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }
    
    public function getAvatar()
    {
        return $this->getMedia('avatars')->last() ? $this->getMedia('avatars')->last()->getFullUrl() : '/img/avatar.png';
    }

    public function getRoles()
    {
        return $this->roles->first()->name;
    }

    public function getSKPD()
    {
        return $this->skpd()->first()->name ?? 'Superadmin';
    }
}
