<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Program;
use App\Models\WorkPackage;

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

    public function program()
    {
        return $this->belongsTo(Program::class);
    }
    
    public function workPackages()
    {
        return $this->hasMany(WorkPackage::class);
    }
}
