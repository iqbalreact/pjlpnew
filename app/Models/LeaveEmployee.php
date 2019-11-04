<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Contract;
use App\Models\Employee;

class LeaveEmployee extends Model
{
    public function contract()
    {
        return $this->belongsTo(Contract::class);
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class);
    }
}
