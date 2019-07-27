<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Skpd;
use Faker\Generator as Faker;

$factory->define(Skpd::class, function (Faker $faker) {
    return [
        'number'        => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'          => $faker->company,
        'address'       => $faker->address,
        'phone_number'  => $faker->e164PhoneNumber,
        'fax'           => $faker->e164PhoneNumber,
        'post_code'     => $faker->postcode,
        'website'       => $faker->domainName,
        'email'         => $faker->email
    ];
});

$factory->afterCreating(Skpd::class, function ($skpd, $faker) {
    $skpd->programs()->saveMany(factory(App\Models\Program::class, 10)->make());
});
