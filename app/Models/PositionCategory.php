<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Position;

class PositionCategory extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'name'
    ];
    
    protected static $logAttributes = [
        'name'
    ];

    public function positions()
    {
        return $this->hasMany(Position::class);
    }
}
