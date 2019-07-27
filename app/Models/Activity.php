<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Activity extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'code', 
        'name', 
        'program_id'
    ];
    
    protected static $logAttributes = [
        'code', 
        'name', 
        'program_id'
    ];    
}
