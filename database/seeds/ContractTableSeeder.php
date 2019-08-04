<?php

use Illuminate\Http\Request;
use Illuminate\Database\Seeder;

use App\Models\Employee;

use App\Bussiness\Contracts\ContractBussInterface;

use Carbon\Carbon;

class ContractTableSeeder extends Seeder
{
    public function __construct(ContractBussInterface $contract)
    {
        $this->contract = $contract;
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
            $request->work_package_id  = $employee->id;
            $request->location_id      = rand(1, count($employees));
            $request->position_id      = rand(1, 40);
            $request->salary           = 1000000;
            $request->start_date       = Carbon::now();
            $request->end_date         = Carbon::now()->addYear(1);
            $request->status           = 'active';
            $request->occupation_id    = rand(1, 50);

            $this->contract->store($request);
        }
        
    }
}
