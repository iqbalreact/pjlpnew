<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;

use Carbon\Carbon;

use PDF;

class ReportController extends Controller
{
    public function __construct(
        ContractBussInterface $contract
    ) {
        $this->contract = $contract;
    }

    public function workInspection()
    {
        return view('admin.report.workInspection');
    }

    public function postWorkInspectionCeremony(Request $request)
    {
        $data = $this->contract->findEmployeeByContract();

        $start  = Carbon::parse($request->date)->startOfMonth();
        $end    = Carbon::parse($request->date)->endOfMonth();

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
}
