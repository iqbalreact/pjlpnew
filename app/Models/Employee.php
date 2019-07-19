<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

class Employee extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = ['name', 'address'];
    
    protected static $logAttributes = ['name', 'address'];
}
