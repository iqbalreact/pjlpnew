<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\Employee;
use App\Models\Functionary;
use App\Models\Skpd;

use App\Scopes\OwnWorkHandoverScope;

class WorkHandover extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'employee_id', 
        'skpd_id', 
        'functionary_id',
        'contract_id', 
        'number',
        'date',
        'section_1',
        'section_2',
        'section_3',
        'section_4',
    ];
    
    protected static $logAttributes = [
        'employee_id', 
        'skpd_id', 
        'functionary_id', 
        'contract_id',
        'number',
        'date',
        'section_1',
        'section_2',
        'section_3',
        'section_4',
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnWorkHandoverScope);
    }

    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }
    
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
