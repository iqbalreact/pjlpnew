<?php

use Illuminate\Http\Request;
use Illuminate\Database\Seeder;

use App\Models\Employee;

use App\Bussiness\Contracts\ContractBussInterface;
use App\Repository\Contracts\LeaveEmployeeRepoInterface;

use Carbon\Carbon;

class ContractTableSeeder extends Seeder
{
    public function __construct(
        ContractBussInterface $contract,
        LeaveEmployeeRepoInterface $leaveEmployee
    ) {
        $this->contract         = $contract;
        $this->leaveEmployee    = $leaveEmployee;
    }

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $contract = new ContractBussInterface();
        
        $employees = Employee::all();

        foreach($employees as $employee) {
            $request = new Request();
            $request->number           = rand(1, 2000);
            $request->employee_id      = $employee->id;
            $request->work_package_id  = rand(1, 10);
            $request->location_id      = rand(1, count($employees));
            $request->position_id      = rand(1, 40);
            $request->start_date       = Carbon::now();
            $request->end_date         = Carbon::now()->addYear(1);
            $request->status           = 'active';
            $request->occupation_id    = rand(1, 50);
            $request->remain_leave     = 12;

            $component  = [1,2];
            $nominal    = [1000000,2000000];

            $salaries = ['component' => $component, 'nominal' => $nominal];

            $request->salaries = $salaries;

            $contractEmployee   = $this->contract->store($request);
            // $leaveEmployee      = $this->leaveEmployee->store($request->employee_id, $contractEmployee->id);
        }

        
        // $employees = factory(App\Models\Employee::class, 1000)->create();

        // foreach($employees as $employee) {
        //     $request = new Request();
        //     $request->number           = rand(1, 2000);
        //     $request->employee_id      = $employee->id;
        //     $request->work_package_id  = 1;
        //     $request->location_id      = 1;
        //     $request->position_id      = rand(1, 40);
        //     $request->salary           = 1000000;
        //     $request->start_date       = Carbon::now();
        //     $request->end_date         = Carbon::now()->addYear(1);
        //     $request->status           = 'active';
        //     $request->occupation_id    = rand(1, 50);

        //     $this->contract->store($request);
        // }

        // $employees = factory(App\Models\Employee::class, 1000)->create();

        // foreach($employees as $employee) {
        //     $request = new Request();
        //     $request->number           = rand(1, 2000);
        //     $request->employee_id      = $employee->id;
        //     $request->work_package_id  = 2;
        //     $request->location_id      = 1;
        //     $request->position_id      = rand(1, 40);
        //     $request->salary           = 1000000;
        //     $request->start_date       = Carbon::now();
        //     $request->end_date         = Carbon::now()->addYear(1);
        //     $request->status           = 'active';
        //     $request->occupation_id    = rand(1, 50);

        //     $this->contract->store($request);
        // }

        // $employees = factory(App\Models\Employee::class, 1000)->create();

        // foreach($employees as $employee) {
        //     $request = new Request();
        //     $request->number           = rand(1, 2000);
        //     $request->employee_id      = $employee->id;
        //     $request->work_package_id  = 3;
        //     $request->location_id      = 1;
        //     $request->position_id      = rand(1, 40);
        //     $request->salary           = 1000000;
        //     $request->start_date       = Carbon::now();
        //     $request->end_date         = Carbon::now()->addYear(1);
        //     $request->status           = 'active';
        //     $request->occupation_id    = rand(1, 50);

        //     $this->contract->store($request);
        // }
        
    }
}
