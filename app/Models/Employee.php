<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

use App\Models\Assessment;
use App\Models\Attendance;
use App\Models\Contract;
use App\Models\RecapAttendance;
use App\Models\Skpd;

use App\Scopes\OwnEmployeeScope;

class Employee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'nipj', 
        'skpd_id', 
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
        'skpd_id', 
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

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnEmployeeScope);
    }

    public function assessments()
    {
        return $this->hasMany(Assessment::class);
    }

    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

    public function contracts()
    {
        return $this->hasMany(Contract::class);
    }

    public function activeContracts()
    {
        return $this->hasMany(Contract::class)->where('status', 'active');
    }

    public function recapAttendances()
    {
        return $this->hasMany(RecapAttendance::class);
    }

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }

    public function getAvatar()
    {
        return $this->getMedia('avatars')->last() ? $this->getMedia('avatars')->last()->getFullUrl() : env('APP_URL').'/img/avatar.png';
    }
}
