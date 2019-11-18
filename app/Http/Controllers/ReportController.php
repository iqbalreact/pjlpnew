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
