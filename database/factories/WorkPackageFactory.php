<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\WorkPackage;
use Faker\Generator as Faker;

$factory->define(WorkPackage::class, function (Faker $faker) {
    return [
        'code'   => $faker->unique()->word,
        'name'   => $faker->words($nb = 3, $asText = true),
    ];
});
