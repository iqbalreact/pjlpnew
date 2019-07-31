<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\PositionCategory;

class Position extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'name',
        'position_category_id'
    ];
    
    protected static $logAttributes = [
        'name',
        'position_category_id'
    ];

    public function positionCategory()
    {
        return $this->belongsTo(PositionCategory::class);
    }
}
