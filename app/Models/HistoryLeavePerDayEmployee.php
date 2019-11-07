<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\Employee;

class HistoryLeavePerDayEmployee extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'date', 
        'contract_id', 
        'employee_id',
        'leave_type'
    ];
    
    protected static $logAttributes = [
        'date', 
        'contract_id', 
        'employee_id',
        'leave_type'
    ];

    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }
}