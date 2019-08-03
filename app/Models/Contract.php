<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Contract extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'number', 
        'employee_id', 
        'skpd_id',
        'program_id',
        'activity_id',
        'work_package_id',
        'location_id',
        'position_id',
        'salary',
        'start_date',
        'end_date',
        'status',
        'occupation_id'
    ];
    
    protected static $logAttributes = [
        'number', 
        'employee_id', 
        'skpd_id',
        'program_id',
        'activity_id',
        'work_package_id',
        'location_id',
        'position_id',
        'salary',
        'start_date',
        'end_date',
        'status',
        'occupation_id'
    ];
}
