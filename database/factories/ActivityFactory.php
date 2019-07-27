<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Activity;
use Faker\Generator as Faker;

$factory->define(Activity::class, function (Faker $faker) {
    return [
        'code'   => $faker->unique()->word,
        'name'   => $faker->words($nb = 3, $asText = true),
    ];
});

$factory->afterCreating(Activity::class, function ($activity, $faker) {
    $activity->workPackages()->saveMany(factory(App\Models\WorkPackage::class, 10)->make());
});
