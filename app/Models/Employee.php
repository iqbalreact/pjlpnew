<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

// use Spatie\Activitylog\Models\Activity;

class Employee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'nip', 
        'name', 
        'ktp', 
        'npwp', 
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];
    
    protected static $logAttributes = [
        'nip', 
        'name', 
        'ktp', 
        'npwp', 
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];

    public function getAvatar()
    {
        return $this->getMedia('avatars')->last() ? $this->getMedia('avatars')->last()->getFullUrl() : '/img/avatar.png';
    }
}
