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
