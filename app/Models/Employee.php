<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

class Employee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'nik', 
        'name', 
        'ktp', 
        'npwp', 
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];
    
    protected static $logAttributes = [
        'nik', 
        'name', 
        'ktp', 
        'npwp', 
        'account_number',
        'bpjs_healthcare',
        'bpjs_social_security'
    ];
}
