<?php

use Illuminate\Database\Seeder;

use App\Models\WorkDay;

class WorkDayTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = new WorkDay();
        $data->year         = 2019;
        $data->january      = 25;
        $data->february     = 25;
        $data->march        = 25;
        $data->april        = 25;
        $data->may          = 25;
        $data->june         = 25;
        $data->july         = 25;
        $data->august       = 25;
        $data->september    = 25;
        $data->october      = 25;
        $data->november     = 25;
        $data->december     = 25;
        $data->save();

        $data = new WorkDay();
        $data->year         = 2018;
        $data->january      = 25;
        $data->february     = 25;
        $data->march        = 25;
        $data->april        = 25;
        $data->may          = 25;
        $data->june         = 25;
        $data->july         = 25;
        $data->august       = 25;
        $data->september    = 25;
        $data->october      = 25;
        $data->november     = 25;
        $data->december     = 25;
        $data->save();
    }
}
