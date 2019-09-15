<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AssessmentBussInterface;
use App\Bussiness\Contracts\AttendanceBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\Contracts\PayrollBussInterface;
use App\Bussiness\Contracts\WorkDayBussInterface;

use App\Repository\Contracts\PayrollRepoInterface;

use Carbon\Carbon;

class PayrollBuss implements PayrollBussInterface
{
    private $month = [
        '01'   => 'january',
        '02'   => 'february',
        '03'   => 'march',
        '04'   => 'april',
        '05'   => 'may',
        '06'   => 'june',
        '07'   => 'july',
        '08'   => 'august',
        '09'   => 'september',
        '10'  => 'october',
        '11'  => 'november',
        '12'  => 'december'
    ];

    public function __construct(
        AssessmentBussInterface $assessment,
        AttendanceBussInterface $attendance,
        ContractBussInterface $contract,
        PayrollRepoInterface $payrollRepo,
        WorkDayBussInterface $workDay
    ) {
        $this->assessment   = $assessment;
        $this->attendance   = $attendance;
        $this->contract     = $contract;
        $this->workDay      = $workDay;

        $this->payrollRepo  = $payrollRepo;
    }

    public function store(Request $request)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');
        
        $recapAttendance        = $this->attendance->findRecap($request);
        $totalAttendance        = $this->attendance->totalAttendance($recapAttendance);
        $workDay                = $this->getWorkDay($month, $year);
        $assessment             = $this->assessment->findAssessment($request);

        if (is_null($assessment) && $totalAttendance < $workDay) {
            return false;
        };

        $contract               = $this->contract->find($request->contract_id);
        $grossSalary            = $this->grossSalary($contract->salaries);
        $deductionAttendance    = $this->deductionAttendance($recapAttendance->not_present, $grossSalary, $workDay);

        $salaryAfterAttendanceDeduction = $grossSalary - $deductionAttendance;
        $deductionHealthcare            = $this->deductionHealthcare($salaryAfterAttendanceDeduction);
        $deductionSocialSecurity        = $this->deductionSocialSecurity($salaryAfterAttendanceDeduction);

        $netSalary  = $salaryAfterAttendanceDeduction - $deductionHealthcare - $deductionSocialSecurity;

        $request->month         = $month;
        $request->year          = $year;
       
        // attendance
        $request->attend        = is_null($recapAttendance) ? 0 : $recapAttendance->attend;
        $request->sick          = is_null($recapAttendance) ? 0 : $recapAttendance->sick;
        $request->leave         = is_null($recapAttendance) ? 0 : $recapAttendance->leave;
        $request->not_present   = is_null($recapAttendance) ? 0 : $recapAttendance->not_present;
       
        $request->gross_salary  = $grossSalary;

        // deduction
        $request->deduction_attendance              = $deductionAttendance;
        $request->deduction_bpjs_healthcare         = $deductionHealthcare;
        $request->deduction_bpjs_social_security    = $deductionSocialSecurity;

        $request->net_salary = $netSalary;

        $data = $this->payrollRepo->store($request);
        $this->storePayrollSalary($data->id, $contract->salaries);
        
        return $data;
    }

    public function storePayrollSalary($payroll_id, $salaries)
    {
        $oldDatas = $this->payrollRepo->findPayrollSalary($payroll_id);
        
        foreach($oldDatas as $data) {
            $this->payrollRepo->deletePayrollSalary($data->id);
        }

        foreach($salaries as $salary) {
            $request = new Request();
            $request->salary_component_id   = $salary->salary_component_id;
            $request->salary_component_name = $salary->salaryComponent->name;
            $request->nominal               = $salary->nominal;

            $this->payrollRepo->storeSalary($payroll_id, $request);
        }
    }

    public function grossSalary($salaries)
    {
        $total = 0;
        foreach($salaries as $salary) {
            $total = $salary->nominal;
        }
        
        return $total;
    }

    public function deductionAttendance($totalNotPresent, $grossSalary, $workDay)
    {
        $salaryAfterAttendanceDeduction = 1.2 * ($totalNotPresent/$workDay) * $grossSalary;

        return $salaryAfterAttendanceDeduction;
    }

    public function deductionHealthcare($salaryAfterAttendanceDeduction)
    {
        $deductionHealthcare = 0.02 * $salaryAfterAttendanceDeduction;

        return $deductionHealthcare;
    }

    public function deductionSocialSecurity($salaryAfterAttendanceDeduction)
    {
        $deductionSocialSecurity = 0.02 * $salaryAfterAttendanceDeduction;

        return $deductionSocialSecurity;
    }

    private function getWorkDay($month, $year)
    {
        $workDay = $this->workDay->findByYear($year);

        if (is_null($workDay)) {
            return null;
        }

        $monthTranslate = $this->month[$month];

        return $workDay->$monthTranslate;
    }
}