<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Salary;

class SalaryComponent extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'name'
    ];
    
    protected static $logAttributes = [
        'name'
    ];

    public function salaries()
    {
        return $this->hasMany(Salary::class);
    }
}
