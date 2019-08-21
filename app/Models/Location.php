<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Skpd;

class Location extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'name', 
        'skpd_id'
    ];
    
    protected static $logAttributes = [
        'name', 
        'skpd_id'
    ];

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }
}
