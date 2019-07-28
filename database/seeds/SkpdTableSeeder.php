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
        factory(App\Models\Skpd::class, 5)->create()->each(function($u) {
            $u->programs()
                ->saveMany( factory(App\Models\Program::class, 5)->make() )
                ->each(function($program){
                    $program->activities()->saveMany(factory(App\Models\Activity::class, 2)->make() )
                        ->each(function($activity) {
                            $activity->workPackages()->saveMany(factory(App\Models\WorkPackage::class, 2)->make() );
                        });
                });
        });
    }
}
