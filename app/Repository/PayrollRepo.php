<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\PayrollRepoInterface;

use App\Models\Payroll;
use App\Models\PayrollSalary;

use Carbon\Carbon;

class PayrollRepo implements PayrollRepoInterface
{
    public function findPayroll($id)
    {
        $data = Payroll::with(
                        'contract',
                        'employee', 
                        'payrollSalaries',
                        'workPackage.activity.program.skpd'
                    )->find($id);

        return $data;
    }

    public function findByContractId($contract_id)
    {
        $data = Payroll::with('payrolSalaries')
                        ->where('contract_id', $contract_id)
                        ->get();

        return $data;
    }

    public function findPayrollSalary($payroll_id)
    {
        $data = PayrollSalary::where('payroll_id', $payroll_id)->get();

        return $data;
    }

    public function store(Request $request)
    {
        $data = Payroll::updateOrCreate(
            [
                'month'             => $request->month,
                'year'              => $request->year,
                'employee_id'       => $request->employee_id, 
                'contract_id'       => $request->contract_id, 
                'work_package_id'   => $request->work_package_id
            ],[
                'attend'                           =>  $request->attend,
                'sick'                             =>  $request->sick,
                'leave'                            =>  $request->leave,
                'not_present'                      =>  $request->not_present,
                'gross_salary'                     =>  $request->gross_salary,
                'deduction_attendance'             =>  $request->deduction_attendance,
                'deduction_bpjs_healthcare'        =>  $request->deduction_bpjs_healthcare,
                'deduction_bpjs_social_security'   =>  $request->deduction_bpjs_social_security,
                'net_salary'                       =>  $request->net_salary,
            ]
        );

        return $data;
    }

    public function storeSalary($payroll_id, Request $request)
    {
        $data = new PayrollSalary();
        $data->payroll_id               = $payroll_id;
        $data->salary_component_id      = $request->salary_component_id;
        $data->salary_component_name    = $request->salary_component_name;
        $data->nominal                  = $request->nominal;
        $data->save();

        return $data;
    }

    public function deletePayrollSalary($id)
    {
        $data = PayrollSalary::find($id);
        $data->delete();

        return true;
    }
}