<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Employee;
use App\Models\PayrollSalary;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Payroll extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'month', 
        'year', 
        'employee_id', 
        'contract_id', 
        'work_package_id',
        'attend',
        'sick',
        'leave',
        'not_present',
        'gross_salary', 
        'deduction_attendance',
        'deduction_bpjs_healthcare',
        'deduction_bpjs_social_security',
        'net_salary'
    ];
    
    protected static $logAttributes = [
        'month', 
        'year', 
        'employee_id', 
        'contract_id', 
        'work_package_id',
        'attend',
        'sick',
        'leave',
        'not_present',
        'gross_salary', 
        'deduction_attendance',
        'deduction_bpjs_healthcare',
        'deduction_bpjs_social_security',
        'net_salary'
    ];

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }

    public function payrollSalaries()
    {
        return $this->hasMany(PayrollSalary::class);
    }


}
