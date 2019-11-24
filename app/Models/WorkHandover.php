<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Skpd;
use App\Models\Employee;
use App\Models\Functionary;

class WorkHandover extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'employee_id', 
        'skpd_id', 
        'functionary_id', 
        'number',
        'section_1',
        'section_2',
        'section_3',
        'section_4',
    ];
    
    protected static $logAttributes = [
        'employee_id', 
        'skpd_id', 
        'functionary_id', 
        'number',
        'section_1',
        'section_2',
        'section_3',
        'section_4',
    ];
    
    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }

    public function functionary()
    {
        return $this->belongsTo(Functionary::class);
    }
}
