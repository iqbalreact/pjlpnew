<?php

namespace App\Scopes;

use Illuminate\Database\Eloquent\Scope;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class OwnActivityScope implements Scope
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

        if (empty($user)) {
            return;
        }
        
        $role = $user->getRoleNames()->toArray();

        if (!in_array('superadmin', $role)) {
            $builder->whereHas('program', function($q) use ($user) {
                $q->where('skpd_id', $user->skpd_id);
            });
        }

    }
}