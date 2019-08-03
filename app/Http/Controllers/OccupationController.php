<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\FunctionaryBussInterface;
use App\Bussiness\Contracts\OccupationBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;

use App\Http\Requests\OccupationRequest;

use App\Services\Contracts\OccupationServiceInterface;
use App\Services\Contracts\StatusServiceInterface;

use Carbon\Carbon;

class OccupationController extends Controller
{
    public function __construct(
        FunctionaryBussInterface $functionary,
        OccupationBussInterface $occupation,
        OccupationServiceInterface $position,
        SkpdBussInterface $skpd,
        StatusServiceInterface $status
    ) {
        $this->functionary  = $functionary;
        $this->occupation   = $occupation;
        $this->position     = $position;
        $this->skpd         = $skpd;
        $this->status       = $status;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.occupation.index');                
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $positions = $this->position->occupationTransform;
        $status    = $this->status->statusTransform;

        return view('admin.occupation.create', compact('positions', 'status'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OccupationRequest $request)
    {
        $checkActiveOccupation = $this->occupation->checkOccupation($request->functionary_id, $request->start_date, $request->end_date);

        if ($checkActiveOccupation) {
            notify()->warning('Pejabat masih mempunyai jabatan aktif di periode tersebut');
            return redirect()->back();
        }

        $data = $this->occupation->store($request);

        notify()->success('Jabatan berhasil dibuat');
        
        return redirect()->route('occupation.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->occupation->find($id);

        if (!$data) {
            notify()->warning('Jabatan tidak ditemukan');
            return redirect()->back();
        }

        $functionary    = $this->functionary->find($data->functionary_id);
        $skpd           = $this->skpd->find($data->skpd_id);

        $position   = $this->position->occupationTransform($data->position);
        $status     = $this->status->statusTransform($data->status);
        
        return view('admin.occupation.show', compact('data', 'position', 'status', 'functionary', 'skpd'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->occupation->find($id);

        if (!$data) {
            notify()->warning('Jabatan tidak ditemukan');
            return redirect()->back();
        }

        $data->start_date   = Carbon::parse($data->start_date)->format('d-m-Y');
        $data->end_date     = Carbon::parse($data->end_date)->format('d-m-Y');

        $functionary    = $this->functionary->find($data->functionary_id);
        $skpd           = $this->skpd->find($data->skpd_id);

        $positions  = $this->position->occupationTransform;
        $status     = $this->status->statusTransform;
        
        return view('admin.occupation.edit', compact('data', 'positions', 'status', 'functionary', 'skpd'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(OccupationRequest $request, $id)
    {
        $checkActiveOccupation = $this->occupation->checkOccupation($request->functionary_id, $request->start_date, $request->end_date, $id);

        if ($checkActiveOccupation) {
            notify()->warning('Pejabat masih mempunyai jabatan aktif di periode tersebut');
            return redirect()->back();
        }

        $data = $this->occupation->update($request, $id);

        notify()->success('Jabatan berhasil diupdate');

        return redirect()->route('occupation.show', ['id' => $data->id]);
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
