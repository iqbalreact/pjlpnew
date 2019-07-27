<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Models\Program;
use Faker\Generator as Faker;

$factory->define(Program::class, function (Faker $faker) {
    return [
        'code'   => $faker->unique()->word,
        'name'   => $faker->words($nb = 3, $asText = true),
    ];
});

$factory->afterCreating(Program::class, function ($program, $faker) {
    $program->activities()->saveMany(factory(App\Models\Activity::class, 10)->make());
});
