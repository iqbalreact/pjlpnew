<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Skpd;
use Faker\Generator as Faker;

$factory->define(Skpd::class, function (Faker $faker) {
    return [
        'number'    => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'      => $faker->company
    ];
});
