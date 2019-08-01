<?php

namespace App\Scopes;

use Illuminate\Database\Eloquent\Scope;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class OwnWorkPackageScope implements Scope
{
    /**
     * Apply the scope to a given Eloquent query builder.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $builder
     * @param  \Illuminate\Database\Eloquent\Model  $model
     * @return void
     */
    public function apply(Builder $builder, Model $model)
    {
        $user = \Auth::user();
        $role = $user->getRoleNames()->toArray();

        if (!in_array('superadmin', $role)) {
            $builder->whereHas('activity', function($q) use ($user) {
                $q->whereHas('program', function($q) use ($user) {
                    $q->where('skpd_id', $user->skpd_id);
                });
            });
        }

    }
}