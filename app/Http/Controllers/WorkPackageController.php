<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\Contracts\WorkPackageBussInterface;

use App\Http\Requests\WorkPackageRequest;

class WorkPackageController extends Controller
{
    public function __construct(
        ActivityBussInterface $activity,
        WorkPackageBussInterface $workPackage
    ) {
        $this->activity     = $activity;
        $this->workPackage  = $workPackage;
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.workPackage.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // Validate SKPD ID
        if (!$request->activity_id) {
            return view('admin.workPackage.create');
        }

        $activity = $this->activity->find($request->activity_id);

        // Check Null SKPD
        if (!$activity) {
            notify()->warning('Kegiatan tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.workPackage.create', compact('activity'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WorkPackageRequest $request)
    {
        $data = $this->workPackage->store($request);

        notify()->success('Paket pekerjaan berhasil dibuat');

        return redirect()->route('workPackage.show', $data->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->workPackage->find($id);

        // Check Null SKPD
        if (!$data) {
            notify()->warning('Paket pekerjaan tidak ditemukan');
            return redirect()->back();
        }

        $activity = $this->activity->find($data->activity_id);

        if (!$activity) {
            notify()->warning('Paket pekerjaan tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.workPackage.show', compact('data', 'activity'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->workPackage->find($id);

        // Check Null SKPD
        if (!$data) {
            notify()->warning('Peket pekerjaan tidak ditemukan');
            return redirect()->back();
        }

        $activity = $this->activity->find($data->activity_id);

        if (!$activity) {
            notify()->warning('Paket pekerjaan tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.workPackage.edit', compact('data', 'activity'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(WorkPackageRequest $request, $id)
    {
        $data = $this->workPackage->update($request, $id);

        notify()->success('Paket pekerjaan berhasil diupdate');

        return redirect()->route('workPackage.show', $data->id);
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
