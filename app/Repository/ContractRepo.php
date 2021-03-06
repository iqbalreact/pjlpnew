<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\ContractRepoInterface;

use App\Models\Contract;
use App\Models\Salary;

use Carbon\Carbon;

class ContractRepo implements ContractRepoInterface
{
    public function countContract($status = 'active')
    {
        $data = Contract::where('status', $status)
                        ->count();

        return $data;
    }

    public function find($id)
    {
        $data = Contract::with('position', 'salaries.salaryComponent')->find($id);
        
        if (is_null($data)) {
            return false;
        }
        
        return $data;
    }

    public function findByEmployeeId($employee_id)
    {
        $data = Contract::where('employee_id', $employee_id)
                        ->get();

        return $data;
    }

    public function findActiveContract($employee_id)
    {
        $data = Contract::where('employee_id', $employee_id)
                        ->where('status', 'active')
                        ->first();

        return $data;
    }

    public function findEmployeeByContract()
    {
        $data = Contract::with('position', 'employee', 'skpd')
                        ->where('status', 'active')
                        ->get();

        return $data;
    }

    public function distinctYear()
    {
        $data = Contract::selectRaw('YEAR(start_date) as year')->distinct()->get();

        return $data;
    }

    public function contractInformation($id)
    {
        $data = Contract::with('skpd', 'program', 'activity', 'workPackage', 'position')->find($id);

        return $data;
    }

    public function store(Request $request)
    {
        $data = new Contract();
        $data->number           = $request->number;
        $data->employee_id      = $request->employee_id;
        $data->skpd_id          = $request->skpd_id;
        $data->program_id       = $request->program_id;
        $data->activity_id      = $request->activity_id;
        $data->work_package_id  = $request->work_package_id;
        $data->location_id      = $request->location_id;
        $data->position_id      = $request->position_id;
        $data->start_date       = Carbon::parse($request->start_date);
        $data->end_date         = Carbon::parse($request->end_date);
        $data->status           = $request->status;
        $data->occupation_id    = $request->occupation_id;
        $data->bonus            = $request->bonus;
        $data->save();

        $this->saveSalary($request->salaries, $data);

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = Contract::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->number           = $request->number;
        $data->employee_id      = $request->employee_id;
        $data->skpd_id          = $request->skpd_id;
        $data->program_id       = $request->program_id;
        $data->activity_id      = $request->activity_id;
        $data->work_package_id  = $request->work_package_id;
        $data->location_id      = $request->location_id;
        $data->position_id      = $request->position_id;
        $data->start_date       = Carbon::parse($request->start_date);
        $data->end_date         = Carbon::parse($request->end_date);
        $data->status           = $request->status;
        $data->occupation_id    = $request->occupation_id;
        $data->bonus            = $request->bonus ?? 0;
        $data->update();

        $data->salaries()->delete();
        $this->saveSalary($request->salaries, $data);

        return $data;
    }

    public function saveSalary($salaries, $data)
    {
        for ($i = 0; $i < count($salaries['component']); $i++) { 
            $salary = new Salary();
            $salary->salary_component_id    = $salaries['component'][$i];
            $salary->nominal                = $salaries['nominal'][$i];
            $salary->contract_id            = $data->id;
            $salary->save();
        }
    }
}