<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use App\Models\Skpd;
use App\Models\Functionary;

use App\Scopes\OwnContractScope;

class Occupation extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'functionary_id', 
        'skpd_id', 
        'start_date', 
        'end_date',
        'position',
        'status'
    ];
    
    protected static $logAttributes = [
        'functionary_id', 
        'skpd_id', 
        'start_date', 
        'end_date',
        'position',
        'status'
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new OwnContractScope);
    }

    public function skpd()
    {
        return $this->belongsTo(Skpd::class);
    }

    public function functionary()
    {
        return $this->belongsTo(Functionary::class);
    }

}
