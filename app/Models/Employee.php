<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

use App\Models\Attendance;
use App\Models\Contract;

class Employee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'nipj', 
        'name', 
        'ktp', 
        'npwp',
        'gender',
        'address',
        'religion',
        'phone_number',
        'bank_name', 
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];
    
    protected static $logAttributes = [
        'nipj', 
        'name', 
        'ktp', 
        'npwp', 
        'gender',
        'address',
        'religion',
        'phone_number',
        'bank_name',
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];

    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

    public function contracts()
    {
        return $this->hasMany(Contract::class);
    }

    public function getAvatar()
    {
        return $this->getMedia('avatars')->last() ? $this->getMedia('avatars')->last()->getFullUrl() : '/img/avatar.png';
    }
}
