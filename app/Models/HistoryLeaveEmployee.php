<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

use App\Models\Contract;
use App\Models\Employee;

use App\Scopes\OwnLeaveScope;


class HistoryLeaveEmployee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'start_date', 
        'end_date', 
        'contract_id', 
        'employee_id',
        'leave_type',
        'total_day',
        'dates'
    ];
    
    protected static $logAttributes = [
        'start_date', 
        'end_date', 
        'contract_id', 
        'employee_id',
        'leave_type',
        'total_day',
        'dates'
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnLeaveScope);
    }

    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }

    public function getPicture()
    {
        return $this->getMedia('pictures')->last() ? $this->getMedia('pictures')->last()->getFullUrl() : '';
    }
}
