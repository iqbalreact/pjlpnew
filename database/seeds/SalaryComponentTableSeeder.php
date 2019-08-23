<?php

use Illuminate\Database\Seeder;

use App\Models\SalaryComponent;

class SalaryComponentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <= 10 ; $i++) { 
            SalaryComponent::create(['name' => 'Komponen Gaji '.$i]);
        }
    }
}
