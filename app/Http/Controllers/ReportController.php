<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ContractBussInterface;

use Carbon\Carbon;

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

    public function postWorkInspection(Request $request)
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

        return view('admin.report.export.workInspection', compact('data', 'dates'));
    }
}
