<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Employee;
use Faker\Generator as Faker;

$factory->define(Employee::class, function (Faker $faker) {
    return [
        'nipj'                  => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'                  => $faker->name,
        'ktp'                   => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'npwp'                  => $faker->randomNumber($nbDigits = 7, $strict = false),
        'gender'                => $faker->randomElement(['laki-laki', 'perempuan']),
        'address'               => $faker->address,
        'religion'              => $faker->randomElement(['budha', 'islam', 'kristen', 'katolik', 'khong_hu_cu', 'protestan']),
        'phone_number'          => $faker->e164PhoneNumber,
        'bank_name'             => $faker->randomElement(['kalbar', 'pasar']),
        'account_number'        => $faker->bankAccountNumber,
        'bpjs_healthcare'       => $faker->randomNumber($nbDigits = 7, $strict = false),
        'bpjs_social_security'  => $faker->randomNumber($nbDigits = 7, $strict = false)
    ];
});
