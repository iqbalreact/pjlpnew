<?php

use Illuminate\Database\Seeder;

use App\Models\User;

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

        $user->assignRole('superadmin');

        $user = new User();
        $user->name         = 'Admin SKPD';
        $user->email        = 'skpd@pjlp.dev'; 
        $user->password     = bcrypt('secret');
        $user->skpd_id      = 1;
        $user->save();

        $user->assignRole('adminskpd');

        $user = new User();
        $user->name         = 'Admin PPK';
        $user->email        = 'ppk@pjlp.dev'; 
        $user->password     = bcrypt('secret');
        $user->skpd_id      = 1;
        $user->save();

        $user->assignRole('adminppk');

        $user = new User();
        $user->name         = 'Operator';
        $user->email        = 'operator@pjlp.dev'; 
        $user->password     = bcrypt('secret');
        $user->skpd_id      = 1;
        $user->save();

        $user->assignRole('operator');
    }
}
