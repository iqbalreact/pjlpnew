<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Occupation;
use App\Models\Functionary;
use Faker\Generator as Faker;

use Carbon\Carbon;

$factory->define(Occupation::class, function (Faker $faker) {
    
    // $functionary = factory(App\Models\Program::class, 1);

    $functionary = Functionary::create([
        'nip'           => $faker->unique()->randomNumber($nbDigits = 7, $strict = false),
        'name'          => $faker->name,
        'phone_number'  => $faker->e164PhoneNumber
    ]);

    return [
        'functionary_id' => $functionary->id,
        'start_date'    => Carbon::now(), 
        'end_date'      => Carbon::now()->addYear(1),
        'position'      => $faker->randomElement(['pa', 'kpa', 'ppk', 'pptk', 'bendahara']),
        'status'        => 'active'
    ];
});
