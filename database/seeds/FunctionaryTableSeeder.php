<?php

use Illuminate\Database\Seeder;

class FunctionaryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\Functionary::class, 15)->create();        
    }
}
