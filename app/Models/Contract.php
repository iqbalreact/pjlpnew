<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Activity;
use App\Models\Attendance;
use App\Models\Employee;
use App\Models\Location;
use App\Models\Payroll;
use App\Models\Position;
use App\Models\Program;
use App\Models\Salary;
use App\Models\Skdp;
use App\Models\WorkPackage;

use App\Scopes\OwnContractScope;

class Contract extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'number', 
        'employee_id', 
        'skpd_id',
        'program_id',
        'activity_id',
        'work_package_id',
        'location_id',
        'position_id',
        'salary',
        'start_date',
        'end_date',
        'status',
        'occupation_id'
    ];
    
    protected static $logAttributes = [
        'number', 
        'employee_id', 
        'skpd_id',
        'program_id',
        'activity_id',
        'work_package_id',
        'location_id',
        'position_id',
        'salary',
        'start_date',
        'end_date',
        'status',
        'occupation_id'
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnContractScope);
    }

    public function activity()
    {
        return $this->belongsTo(Activity::class);
    }

    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }

    public function location()
    {
        return $this->belongsTo(Location::class);
    }

    public function payrolls()
    {
        return $this->hasMany(Payroll::class);
    }

    public function position()
    {
        return $this->belongsTo(Position::class);
    }

    public function program()
    {
        return $this->belongsTo(Program::class);
    }

    public function salaries()
    {
        return $this->hasMany(Salary::class);
    }

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }

    public function workPackage()
    {
        return $this->belongsTo(WorkPackage::class);
    }
}
