<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\Employee;

class Assessment extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'month',
        'year',
        'employee_id', 
        'contract_id',
        'work_package_id', 
        'work_completion_rate',
        'work_completion_time',
        'work_quality',
        'obidence_on_obligation',
        'obidence_on_rule'
    ];
    
    protected static $logAttributes = [
        'month',
        'year',
        'employee_id', 
        'contract_id', 
        'work_package_id', 
        'work_completion_rate',
        'work_completion_time',
        'work_quality',
        'obidence_on_obligation',
        'obidence_on_rule'
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
