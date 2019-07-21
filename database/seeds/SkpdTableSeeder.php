<?php

use Illuminate\Database\Seeder;

class SkpdTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\Skpd::class, 5)->create();        
    }
}
