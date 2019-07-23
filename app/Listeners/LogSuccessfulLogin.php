<?php

namespace App\Listeners;

use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

use Spatie\Activitylog\Models\Activity;
use App\Models\User;

class LogSuccessfulLogin
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        activity('login')
            ->performedOn(\Auth()->user())
            ->causedBy($event->user)
            ->log('login');

        \Log::alert(json_encode($event));
    }
}
