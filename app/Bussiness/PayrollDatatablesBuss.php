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
                        ->addColumn('save',  function($data) { 
                            return $this->saveButton();  
                        })
                        ->addColumn('status',  function($data) { 
                            return $this->status($data);  
                        })
                        ->rawColumns([
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

    private function saveButton()
    {
        return '<button class="btn btn-sm btn-primary"><i class="fa fa-save"></i></button>';
    }

    private function status($data)
    {
        // if (!empty($data->employee->assessments->first())) {
        //     return '<div class="stateStatus"><img src="/img/checked.png"></div>';
        // }

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