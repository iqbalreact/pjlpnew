<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\Traits\CausesActivity;

use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

use App\Models\Occupation;

class Functionary extends Model implements HasMedia
{
    use LogsActivity, CausesActivity, HasMediaTrait;

    protected $fillable = [
        'nip', 
        'name', 
        'phone_number',
        'address'
    ];
    
    protected static $logAttributes = [
        'nip', 
        'name', 
        'phone_number',
        'address'
    ];

    public function getAvatar()
    {
        return $this->getMedia('avatars')->last() ? $this->getMedia('avatars')->last()->getFullUrl() : '/img/avatar.png';
    }

    public function occupations()
    {
        return $this->hasMany(Occupation::class);
    }
}
