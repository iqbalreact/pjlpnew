<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Contract;
use App\Models\SalaryComponent;

class Salary extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'contract_id',
        'salary_component_id',
        'nominal'
    ];
    
    protected static $logAttributes = [
        'contract_id',
        'salary_component_id',
        'nominal'
    ];

    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }

    public function salaryComponent()
    {
        return $this->belongsTo(SalaryComponent::class);
    }
}
