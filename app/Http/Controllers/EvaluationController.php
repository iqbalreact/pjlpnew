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

        $employee = DB::table('contracts')
                    ->join('employees', 'employees.id', '=', 'contracts.employee_id')
                    ->join('skpds', 'skpds.id', '=', 'contracts.skpd_id')
                    ->where ('employee_id', $pjlp)
                    ->select(
                        'employees.name as pjlp',
                        'contracts.number as number',
                        'contracts.start_date as date_spk',
                        'skpds.name as skpd'
                        )
                    ->get();

        foreach ($employee as $d) {
            $name = $d->pjlp;
            $number = $d->number;
            $date_spk = $d->date_spk;
            $skpd = $d->skpd;
        }

        $recap = collect();
        $prestasi = collect();
        $nilaitotal = collect();

        // return $data;
        for ($i=1; $i <13 ; $i++) {

            $k = DB::table('assessments')
                        ->where('employee_id', '=',  $pjlp)
                        ->where('year', '=',  $year)
                        ->where('month', '=',  $i)
                        ->first();

            if (is_null($k)) {
                $assessmentAttendance = 0;
                $assessmentCeremony = 0;
                $kinerja = 0;
                $total = 0;
            } else {
                $kinerja =  $k->work_completion_rate
                                + $k->work_completion_time
                                + $k->work_quality
                                + $k->obidence_on_obligation
                                + $k->obidence_on_rule;
                $kehadiran =   DB::table('recap_attendances')
                                    ->where ('month', $k->month)
                                    ->where ('employee_id',$k->employee_id)
                                    ->first();

                $workDay            = $this->workDay->findByYear(Carbon::parse($year)->format('Y'));

                $monthTranslate     = $this->month[$k->month];

                $totalDay           = $workDay->$monthTranslate;

                $attend = $kehadiran->attend + $kehadiran->leave;

                $attendPercentage = ($attend / $totalDay) * 100;

                $assessmentAttendance = $this->findValue($attendPercentage);

                $ceremony = Attendance::whereMonth('date', $k->month)
                            ->whereYear('date', $year)
                            ->where('employee_id', $k->employee_id)
                            ->where('ceremony', 1)
                            ->count();

                $ceremonyPercentage  = ($ceremony / $totalDay) * 100;
                $assessmentCeremony = $this->findValue($ceremonyPercentage);
                $total = $kinerja + $assessmentCeremony + $assessmentAttendance;

                $nilaitotal->push([
                    'bulan' => $this->month[$i],
                    'nilai' => $total,
                ]);

            }

            $prestasi->push(
                [
                    'bulan'         => $i,
                    'bulanName'     => $this->month[$i],
                    'kinerja'       => $kinerja,
                    'kehadiran'     => $assessmentAttendance,
                    'apel'          => $assessmentCeremony,
                    'kinerja'       => $kinerja,
                    'total'         => $total,
                ]
            );

        }


        $totalNilai = $nilaitotal->sum('nilai');
        $totalPrestasi = count($nilaitotal);
        $rataNilai  = $totalNilai / $totalPrestasi;

        if ($rataNilai >= 18 &&  $rataNilai <= 28) {
            $predikat = 'BAIK';
        }elseif ($rataNilai <= 7 && $rataNilai <= 17) {
            $predikat = 'BURUK';
            # code...
        }else {
            $predikat = 'KOSONG';
        }

        $recap->push([
            'nama'          => $name,
            'spk'           => $number,
            'skpd'          => $skpd,
            'year'          => $year,
            'totalNilai'    => $totalNilai,
            'rataNilai'     => $rataNilai,
            'predikat'      => $predikat,
            'tanggal'       => $date_spk,
            'prestasi'      => $prestasi,
        ]);

        // return $recap;
        // $pdf = PDF::loadView('admin.evaluation.report', compact('recap'))->setPaper(array(0, 0, 612, 935.433), 'landscape');
        // return $pdf->stream('Evaluasi Prestasi Kerja.pdf');
        return view ('admin.evaluation.report', compact('recap'));
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
