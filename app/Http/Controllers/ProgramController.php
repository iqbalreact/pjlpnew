<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\Contracts\ProgramBussInterface;

use App\Http\Requests\ProgramRequest;

class ProgramController extends Controller
{
    public function __construct(
        ProgramBussInterface $program,
        SkpdBussInterface $skpd
    ) {
        $this->program  = $program;
        $this->skpd     = $skpd;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // Validate SKPD ID
        if (!$request->skpd_id) {
            notify()->warning('SKPD ID tidak ditemukan');
            return redirect()->back();
        }

        $skpd = $this->skpd->find($request->skpd_id);

        // Check Null SKPD
        if (!$skpd) {
            notify()->warning('Skpd tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.program.create', compact('skpd'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProgramRequest $request)
    {
        $data = $this->program->store($request);

        notify()->success('Program berhasil dibuat');

        return redirect()->route('program.show', $data->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        $data = $this->program->find($id);

        if (!$data) {
            notify()->warning('Program tidak ditemukan');
            return redirect()->back();
        }

        $skpd = $this->skpd->find($data->skpd_id);

        // Check Null SKPD
        if (!$skpd) {
            notify()->warning('Skpd tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.program.show', compact('data', 'skpd'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, Request $request)
    {
        $data = $this->program->find($id);

        if (!$data) {
            notify()->warning('Program tidak ditemukan');
            return redirect()->back();
        }

        $skpd = $this->skpd->find($data->skpd_id);

        // Check Null SKPD
        if (!$skpd) {
            notify()->warning('Skpd tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.program.edit', compact('data', 'skpd'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProgramRequest $request, $id)
    {
        $data = $this->program->update($request, $id);

        notify()->success('Program berhasil diupdate');

        return redirect()->route('program.show', $data->id);
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
