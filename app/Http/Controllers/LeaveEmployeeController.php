<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use Carbon\Carbon;

class LeaveEmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.leave.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.leave.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $this->leaveEmployee->saveRangeLeave($request);

        return response()->json($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->leaveEmployee->findLeaveHistory($id);

        if (!$data) {
            notify()->warning('Cuti tidak ditemukan');
            return redirect()->back();
        }

        $data->start_date   = Carbon::parse($data->start_date)->format('j F Y');
        $data->end_date     = Carbon::parse($data->end_date)->format('j F Y');

        $dates = json_decode($data->dates);

        $transformDate = [];
        if (!is_null($dates)) {
            foreach($dates as $date) {
                array_push($transformDate, Carbon::parse($date)->format('j F Y'));
            }
        }

        // return $data->getPicture();

        return view('admin.leave.show', compact('data', 'transformDate'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(LocationRequest $request, $id)
    {

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $res = $this->leaveEmployee->deleteLeave($id);

        if (!$res) {
            notify()->warning('Cuti tidak ditemukan');
            return redirect()->back();
        }

        notify()->success('Cuti berhasil dihapus');

        return redirect()->route('leaveEmployee.index');
    }

    /**
     * Select2 API
     *
     */
    public function selectList(Request $request)
    {

    }

    public function generateDateRange(Request $request)
    {
        $data = $this->leaveEmployee->genereateDateRange($request->start_date, $request->end_date, $request->employee_id);

        return response()->json($data);
    }
}
