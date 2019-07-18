<?php

use Illuminate\Database\Seeder;

use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User();
        $user->name         = 'comeet';
        $user->email        = 'admin@comeet.dev'; 
        $user->password     = bcrypt('secret');
        $user->save();
    }
}
