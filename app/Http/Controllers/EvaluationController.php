<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;

use App\Models\Employee;
use App\Models\Assessment;
use App\Models\Skpd;

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

use DB;


class EvaluationController extends Controller
{
    private $month = [
        '1'   => 'january',
        '2'   => 'february',
        '3'   => 'march',
        '4'   => 'april',
        '5'   => 'may',
        '6'   => 'june',
        '7'   => 'july',
        '8'   => 'august',
        '9'   => 'september',
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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $employees = Employee::all();
        return view ('admin.evaluation.index', compact('employees'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $pjlp = $request->pjlp;
        $year = $request->year;

        $data = DB::table('assessments')
                ->where('employee_id', '=',  $pjlp)
                ->where('year', '=',  $year)
                ->orderBy('month')
                ->get();

        $workInspection = $this->workInspection->find($pjlp);
        return $workInspection;

        $recap = collect();
        $prestasi = collect();

        foreach ($data as $k) {
            $month = $k->month;
            $kinerja = $k->work_completion_rate + $k->work_completion_time + $k->work_quality + $k->obidence_on_obligation + $k->obidence_on_rule;

            $kehadiran  =   DB::table('recap_attendances')
                            ->where ('month', $month)
                            ->where ('employee_id', $k->employee_id)
                            ->first();

            $workDay            = $this->workDay->findByYear(Carbon::parse($year)->format('Y'));

            $monthTranslate     = $this->month[$month];

            $totalDay           = $workDay->$monthTranslate;

            $attend = $kehadiran->attend + $kehadiran->leave;

            $attendPercentage = ($attend / $totalDay) * 100;

            $assessmentAttendance = $this->findValue($attendPercentage);

            $ceremony = Attendance::whereMonth('date', $month)
                            ->whereYear('date', $year)
                            ->where('employee_id', $k->employee_id)
                            ->where('ceremony', 1)
                            ->count();
            // return $year;
            $ceremonyPercentage  = ($ceremony / $totalDay) * 100;
            $assessmentCeremony = $this->findValue($ceremonyPercentage);

            $prestasi->push([
                'month'         => $month,
                'monthName'     => $monthTranslate,
                'kehadiran'     => $assessmentAttendance,
                'apel'          => $assessmentCeremony,
                'kinerja'       => $kinerja,
                'total'         => $kinerja + $assessmentCeremony + $assessmentAttendance,
            ]);
        }

        $totalNilai = $prestasi->sum('total');
        $totalPrestasi = count($prestasi);
        // return $totalPrestasi;
        $rataNilai  = $totalNilai / $totalPrestasi;

        if ($rataNilai >= 18 &&  $rataNilai <= 28) {
            $predikat = 'BAIK';
        }

        if ($rataNilai <= 7 && $rataNilai <= 17) {
            # code...
            $predikat = 'BURUK';
        }

        $recap->push([
            'nama'          => $workInspection->employee->name,
            'spk'           => $workInspection->spk_number,
            'skpd'          => $workInspection->skpd->name,
            'totalNilai'    => $prestasi->sum('total'),
            'rataNilai'     => $rataNilai,
            'predikat'      => $predikat,
            'tanggal'       => $workInspection->spk_date,
            'prestasi'      => $prestasi
        ]);
        return $recap;
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
        $year   = Carbon::parse($request->date)->format('Y');
        $data   = Attendance:: whereYear('date', $year)
                            ->where('employee_id', $request->employee_id)

                            ->where('ceremony', 1)
                            ->count();

        return $data;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
