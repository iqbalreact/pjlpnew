<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Employee;
use Faker\Generator as Faker;

$factory->define(Employee::class, function (Faker $faker) {
    return [
        'nip'                   => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'                  => $faker->name,
        'ktp'                   => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'npwp'                  => $faker->randomNumber($nbDigits = 7, $strict = false),
        'account_number'        => $faker->randomNumber($nbDigits = 7, $strict = false),
        'bpjs_healthcare'       => $faker->randomNumber($nbDigits = 7, $strict = false),
        'bpjs_social_security'  => $faker->randomNumber($nbDigits = 7, $strict = false)
    ];
});
