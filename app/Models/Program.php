<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Activty;
use App\Models\Skpd;

use App\Scopes\OwnProgramScope;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Program extends Model
{
    use LogsActivity, CausesActivity;
    
    protected $fillable = [
        'code', 
        'name', 
        'skpd_id'
    ];
    
    protected static $logAttributes = [
        'code', 
        'name', 
        'skpd_id'
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnProgramScope);
    }
    
    public function activities()
    {
        return $this->hasMany(Activity::class);
    }

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }
}
