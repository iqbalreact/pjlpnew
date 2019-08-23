<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    // public function run()
    // {
    //     $this->call(RoleTableSeeder::class);
    //     $this->call(PositionTableSeeder::class);
    //     // $this->call(WorkDayTableSeeder::class);
    //     $this->call(UserTableSeeder::class);
    //     // $this->call(EmployeeTableSeeder::class);
    //     // $this->call(FunctionaryTableSeeder::class);
    //     $this->call(SkpdTableSeeder::class);
    //     // $this->call(ContractTableSeeder::class);
    // }

    public function run()
    {
        $this->call(RoleTableSeeder::class);
        $this->call(PositionTableSeeder::class);
        $this->call(WorkDayTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(EmployeeTableSeeder::class);
        $this->call(FunctionaryTableSeeder::class);
        $this->call(SkpdTableSeeder::class);
        $this->call(ContractTableSeeder::class);
    }
}
