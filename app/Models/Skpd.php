<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Skpd extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'number', 
        'name', 
        'address', 
        'phone_number',
        'fax',
        'post_code',
        'website',
        'email'
    ];
    
    protected static $logAttributes = [
        'number', 
        'name', 
        'address', 
        'phone_number',
        'fax',
        'post_code',
        'website',
        'email'
    ];
}
