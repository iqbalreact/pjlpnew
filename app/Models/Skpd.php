<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Location;
use App\Models\Occupation;
use App\Models\Program;

use App\Scopes\SkpdScope;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

class Skpd extends Model
{
    use LogsActivity, CausesActivity;

    protected $fillable = [
        'number', 
        'name', 
        'address', 
        'phone_number',
        'fax',
        'post_code',
        'website',
        'email'
    ];
    
    protected static $logAttributes = [
        'number', 
        'name', 
        'address', 
        'phone_number',
        'fax',
        'post_code',
        'website',
        'email'
    ];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope(new SkpdScope);
    }

    public function locations()
    {
        return $this->hasMany(Location::class);
    }

    public function occupations()
    {
        return $this->hasMany(Occupation::class);
    }

    public function programs()
    {
        return $this->hasMany(Program::class);
    }
}
