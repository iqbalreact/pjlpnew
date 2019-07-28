<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Activity;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class WorkPackage extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'code', 
        'name', 
        'activity_id'
    ];
    
    protected static $logAttributes = [
        'code', 
        'name', 
        'activity_id'
    ];

    public function activity()
    {
        return $this->belongsTo(Activity::class);
    }
}