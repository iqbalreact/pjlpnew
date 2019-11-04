<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\Employee;

class HistoryLeaveEmployee extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'start_date', 
        'end_date', 
        'contract_id', 
        'employee_id'
    ];
    
    protected static $logAttributes = [
        'start_date', 
        'end_date', 
        'contract_id', 
        'employee_id'
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
