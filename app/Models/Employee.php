<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Employee extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = ['name', 'address'];
    
    protected static $logAttributes = ['name', 'address'];
}
