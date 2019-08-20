<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\WorkDayRequest;

use App\Bussiness\Contracts\WorkDayBussInterface;

class WorkDayController extends Controller
{
    public function __construct(WorkDayBussInterface $workday)
    {
        $this->workday = $workday;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.workDay.index');                        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.workDay.create');                        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WorkDayRequest $request)
    {
        $data = $this->workday->store($request);

        notify()->success('Hari kerja berhasil dibuat');
        
        return redirect()->route('workDay.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->workday->find($id);

        if (!$data) {
            notify()->warning('Hari kerja tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.workDay.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->workday->find($id);

        if (!$data) {
            notify()->warning('Hari kerja tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.workDay.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(WorkDayRequest $request, $id)
    {
        $data = $this->workday->update($request, $id);

        notify()->success('Hari Kerja berhasil diupdate');

        return redirect()->route('workDay.show', ['id' => $data->id]);
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
