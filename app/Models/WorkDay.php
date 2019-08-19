<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class WorkDay extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'period', 
        'total'
    ];
    
    protected static $logAttributes = [
        'period', 
        'total'
    ];
}
