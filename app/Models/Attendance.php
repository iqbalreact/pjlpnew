<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\Employee;

class Attendance extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'employee_id', 
        'contract_id',
        'work_package_id', 
        'date', 
        'attendance',
        'from',
        'to',
        'ceremony',
        'late'
    ];
    
    protected static $logAttributes = [
        'employee_id', 
        'contract_id', 
        'work_package_id', 
        'date',
        'attendance',
        'from',
        'to',
        'ceremony',
        'late'
    ];

    public function contract()
    {
        return $this->belongTo(Contract::class);
    }

    public function employee()
    {
        return $this->belongTo(Employee::class);
    }
}
