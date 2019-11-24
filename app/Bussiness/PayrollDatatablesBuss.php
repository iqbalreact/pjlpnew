<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PayrollDatatablesBussInterface;
use App\Bussiness\Contracts\WorkDayBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;

use App\Models\Contract;

use Carbon\Carbon;
use DataTables;

class PayrollDatatablesBuss implements PayrollDatatablesBussInterface
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

    private $totalAttendance;


    public function __construct(
        DatatablesRepoInterface $datatablesRepo,
        WorkDayBussInterface $workDay
    ) {
        $this->datatablesRepo   = $datatablesRepo;
        $this->workDay          = $workDay;
    }

    public function fetchTemplate(Request $request)
    {
        $this->totalDay = $this->getTotalDay($request);

        $query = $this->datatablesRepo->fetchPayrollData($request);
        
        return Datatables::of($query)
                        ->addColumn('DT_RowId', function($data) { 
                            return 'row-'.$data->id;  
                        })
                        ->addColumn('employee_nipj', function(Contract $contract) {
                            return $contract->employee->nipj;
                        })
                        ->addColumn('employee_name', function(Contract $contract) {
                            return $contract->employee->name;
                        })
                        ->addColumn('total_attendance', function($data) {
                            return $this->totalAttendance($data);
                        })
                        ->addColumn('total_day', function($data) {
                            return $this->totalDay;
                        })
                        ->addColumn('assessment', function($data) {
                            return $this->checkAssessment($data);
                        }) 
                        ->addColumn('checkAttendance', function($data) {
                            return $this->checkAttendance($data);
                        }) 
                        ->addColumn('save',  function($data) { 
                            return $this->saveButton($data);  
                        })
                        ->addColumn('detail',  function($data) { 
                            return $this->checkDetail($data);  
                        })
                        ->addColumn('status',  function($data) { 
                            return $this->status($data);  
                        })
                        ->rawColumns([
                            'assessment',
                            'checkAttendance',
                            'detail',
                            'save', 
                            'status',
                        ])
                        ->make(true);
    }

    private function totalAttendance($data)
    {
        $data = $data->employee->recapAttendances->first();

        if (is_null($data)) {
            return 0;
        }

        return $data->attend + $data->sick + $data->leave + $data->not_present;
    }

    private function checkAttendance($data) 
    {
        $attendance = $this->totalAttendance($data);

        if ($attendance < $this->totalDay) {
            return '<label class="label label-danger">Belum Lengkap</label>';
        }

        return '<label class="label label-success">Lengkap</label>';
    }

    private function checkAssessment($data)
    {
        $data = $data->employee->assessments->first();

        if (is_null($data)) {
            return '<label class="label label-danger">Belum Lengkap</label>';
        }

        return '<label class="label label-success">Lengkap</label>';
    }

    private function checkDetail($data)
    {
        $data = $data->payrolls->first();
        
        if (is_null($data)) {
            return '<button class="btn btn-success btn-sm" disabled><i class="fa fa-eye"></i></button>';
        }

        return '<a href="'. route('payroll.show', ['id' => $data->id ]) .'" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a>';
    }

    private function saveButton($data)
    {
        $attendance = $this->totalAttendance($data);
        $assessment = $data->employee->assessments->first();

        if ($attendance < $this->totalDay or is_null($assessment)) {
            return '<button class="btn btn-sm btn-primary" disabled><i class="fa fa-save"></i></button>';
        }

        return '<button class="btn btn-sm btn-primary"><i class="fa fa-save"></i></button>';
    }

    private function status($data)
    {
        if (!empty($data->payrolls->first())) {
            return '<div class="stateStatus"><img src="/img/checked.png"></div>';
        }

        return '<div class="stateStatus"></div>';
    }

    private function getTotalDay(Request $request)
    {
        $month  = Carbon::parse($request->date)->format('m');
        $year   = Carbon::parse($request->date)->format('Y');

        $workDay = $this->workDay->findByYear($year);

        if (is_null($workDay)) {
            return null;
        }

        $monthTranslate = $this->month[$month];

        return $workDay->$monthTranslate;
    }
}