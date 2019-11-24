<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\WorkHandoverRequest;

use App\Bussiness\Contracts\WorkHandoverBussInterface;

use PDF;

class WorkHandoverController extends Controller
{
    public function __construct(WorkHandoverBussInterface $workHandover)
    {
        $this->workHandover = $workHandover;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.workHandover.index');                        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.workHandover.create');                        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $this->workHandover->store($request);

        notify()->success('Hari kerja berhasil dibuat');
        
        return redirect()->route('workHandover.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->workHandover->find($id);

        if (!$data) {
            notify()->warning('Surat serah terima tidak ditemukan');
            return redirect()->back();
        }

        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.workHandover.show', compact('data'))->setPaper('a4', 'potrait');
        return $pdf->download($data->number.'.pdf');

        // return view('admin.report.export.workHandover');
        
        return view('admin.workHandover.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->workHandover->find($id);

        if (!$data) {
            notify()->warning('Surat serah terima tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.workHandover.edit', compact('data'));
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
        $data = $this->workHandover->update($request, $id);

        notify()->success('Surat serah terima berhasil diupdate');

        return redirect()->route('workHandover.index');
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
