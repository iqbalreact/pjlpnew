<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Attendance;

use App\Bussiness\Contracts\AssessmentBussInterface;
use App\Bussiness\Contracts\AttendanceBussInterface;
use App\Bussiness\Contracts\ContractBussInterface;
use App\Bussiness\Contracts\EmployeeBussInterface;
use App\Bussiness\Contracts\WorkDayBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;
use App\Bussiness\Contracts\WorkInspectionBussInterface;

use Carbon\Carbon;

use PDF;

class ReportController extends Controller
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
        EmployeeBussInterface $employee,
        WorkDayBussInterface $workDay,
        WorkInspectionBussInterface $workInspection,
        WorkPackageBussInterface $workPackage
    ) {
        $this->assessment       = $assessment;
        $this->attendance       = $attendance;
        $this->contract         = $contract;
        $this->employee         = $employee;
        $this->workDay          = $workDay;
        $this->workInspection   = $workInspection;
        $this->workPackage      = $workPackage;
    }

    public function workInspection()
    {
        return view('admin.report.workInspection');
    }

    public function workHandOverPage()
    {
        return view('admin.report.workHandover');
    }

    public function paymentPage()
    {
        return view('admin.report.payment');
    }

    public function workHandover()
    {
        $pdf = PDF::loadView('admin.report.export.workHandover')->setPaper('a4', 'potrait');
        return $pdf->download('Serah Terima.pdf');

        return view('admin.report.export.workHandover');
    }

    public function payment()
    {
        $pdf = PDF::loadView('admin.report.export.payment')->setPaper('a4', 'potrait');
        return $pdf->download('Pembayaran.pdf');

        return view('admin.report.export.payment');
    }

    public function workInspectionLetter()
    {
        $pdf = PDF::loadView('admin.report.export.workInspectionLetter')->setPaper('a4', 'potrait');
        return $pdf->download('Surat Pemeriksaan.pdf');

        return view('admin.report.export.payment');
    }

    public function postWorkInspectionCeremony(Request $request)
    {
        $start  = Carbon::parse($request->date)->startOfMonth();
        $end    = Carbon::parse($request->date)->endOfMonth();

        if ($request->type == 3) {
            $request->date = $start;

            $data = $this->assessmentReport($request);

            if (!$data) {
                notify()->error('Data tidak siap untuk digenerate');
                return redirect()->back();
            }

            return $data;
        }

        $data = $this->contract->findEmployeeByContract();

        $dates = [];
        while ($start->lte($end)) {
            $tempData = [
                'date'      => (int) $start->copy()->format('d'),
                'weekend'   => $start->isWeekend()
            ];

            $dates[] = $tempData;
            $start->addDay();
        }

        $period = [
            'month' => $start->format('F'),
            'year'  => $start->format('Y')
        ];

        $skpdName = $data->first()->skpd->name ?? "";

        if ($request->type == 1) {
            $pdf = PDF::loadView('admin.report.export.workInspection', compact('data', 'dates', 'period', 'skpdName'))->setPaper('a4', 'landscape');

            return $pdf->download('Data Apel.pdf');
        }

        $pdf = PDF::loadView('admin.report.export.workInspectionAttendance', compact('data', 'dates', 'period', 'skpdName'))->setPaper('a4', 'landscape');

        return $pdf->download('Data Kehadiran.pdf');
    }

    public function assessmentReport(Request $request)
    {
        $employee       = $this->employee->find($request->employee_id);
        $contract       = $this->contract->find($request->contract_id);
        $workPackage    = $this->workPackage->find($contract->work_package_id);
        $workInspection = $this->workInspection->find($request->work_inspection_id);
        $request->work_package_id = $workPackage->id;

        $recapAssessment    = $this->assessment->findAssessment($request);
        
        if (is_null($recapAssessment)) {
            return false;
        }
        
        $recapAttendace     = $this->attendance->findRecap($request);

        if (is_null($recapAttendace)) {
            return false;
        }
        
        $workDay            = $this->workDay->findByYear(Carbon::parse($request->date)->format('Y'));

        $monthTranslate     = $this->month[Carbon::parse($request->date)->format('m')];

        $totalDay           = $workDay->$monthTranslate;

        $attend = $recapAttendace->attend + $recapAttendace->leave;

        $attendPercentage = ($attend / $totalDay) * 100; 

        $assessmentAttendance = $this->findValue($attendPercentage);

        $ceremonyPercentage = ($this->countCeremony($request) / $totalDay) * 100;

        $assessmentCeremony = $this->findValue($ceremonyPercentage);

        $month  = Carbon::parse($request->date)->format('F');

        $totalIndicator = $recapAssessment->work_completion_rate + $recapAssessment->work_completion_time + $recapAssessment->work_quality + $recapAssessment->obidence_on_obligation + $recapAssessment->obidence_on_rule + $assessmentAttendance + $assessmentCeremony;
        $pdf = PDF::loadView('admin.report.export.workAssessment', compact('employee', 'workInspection', 'contract', 'assessmentAttendance', 'assessmentCeremony', 'month', 'workPackage', 'recapAssessment', 'totalIndicator'))->setPaper('a4', 'landscape');
        return $pdf->download('Pemeriksaan Pekerjaan.pdf');
    }

    public function findValue($value) 
    {
        if ($value <= 64) {
            return 1;
        }

        if ($value >= 65 && $value <= 74) {
            return 2;
        }

        if ($value >= 75 && $value <= 84) {
            return 3;
        }

        if ($value >= 85) {
            return 4;
        }
        
        return;
    }

    public function countCeremony(Request $request)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $data = Attendance::whereMonth('date', $month)
                            ->whereYear('date', $year)
                            ->where('employee_id', $request->employee_id)
                            ->where('contract_id', $request->contract_id)
                            ->where('ceremony', 1)
                            ->count();

        return $data;
    }
}
