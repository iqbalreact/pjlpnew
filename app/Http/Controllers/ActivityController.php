<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\ActivityBussInterface;
use App\Bussiness\Contracts\ProgramBussInterface;

use App\Http\Requests\ActivityRequest;

class ActivityController extends Controller
{
    public function __construct(
        ActivityBussInterface $activity,
        ProgramBussInterface $program
    ) {
        $this->activity = $activity;
        $this->program  = $program;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.activity.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // Validate SKPD ID
        if (!$request->program_id) {
            return view('admin.activity.create');            
        }

        $program = $this->program->find($request->program_id);

        // Check Null SKPD
        if (!$program) {
            notify()->warning('Program tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.activity.create', compact('program'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ActivityRequest $request)
    {
        $data = $this->activity->store($request);

        notify()->success('Kegiatan berhasil dibuat');

        return redirect()->route('activity.show', $data->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->activity->find($id);

        // Check Null SKPD
        if (!$data) {
            notify()->warning('Kegiatan tidak ditemukan');
            return redirect()->back();
        }

        $program = $this->program->find($data->program_id);

        if (!$program) {
            notify()->warning('Program tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.activity.show', compact('data', 'program'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->activity->find($id);

        // Check Null SKPD
        if (!$data) {
            notify()->warning('Kegiatan tidak ditemukan');
            return redirect()->back();
        }

        $program = $this->program->find($data->program_id);

        if (!$program) {
            notify()->warning('Program tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.activity.edit', compact('data', 'program'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ActivityRequest $request, $id)
    {
        $data = $this->activity->update($request, $id);

        notify()->success('Kegiatan berhasil diupdate');

        return redirect()->route('activity.show', $data->id);
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

    /**
     * Generate Code
     */
    public function code(Request $request)
    {
        $data = $this->activity->generateCode($request->program_id);

        return response()->json($data);
    }

    /**
     * Select2 API
     * 
     */
    public function selectList(Request $request)
    {
        $name = $request->q;

        $res = $this->activity->getByName($name);

        return response()->json($res);
    }
}
