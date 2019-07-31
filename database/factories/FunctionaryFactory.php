<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Functionary;
use Faker\Generator as Faker;

$factory->define(Functionary::class, function (Faker $faker) {
    return [
        'nip'           => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'          => $faker->name,
        'phone_number'  => $faker->e164PhoneNumber
    ];
});
