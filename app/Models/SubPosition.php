<?php

namespace App\Models;
use App\Models\Position;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\CausesActivity;
use Spatie\Activitylog\Traits\LogsActivity;

class SubPosition extends Model
{
    use LogsActivity, CausesActivity;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['position_id', 'name'];
    protected static $logAttributes = ['position_id', 'name'];

    public function position()
    {
        return $this->belongsTo(Position::class);
    }
}
