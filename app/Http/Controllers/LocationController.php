<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\LocationRequest;

use App\Bussiness\Contracts\LocationBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;

class LocationController extends Controller
{
    public function __construct(
        LocationBussInterface $location,
        SkpdBussInterface $skpd
    ) {
        $this->location = $location;
        $this->skpd     = $skpd;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.location.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.location.create');        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(LocationRequest $request)
    {
        $data = $this->location->store($request);

        notify()->success('Lokasi berhasil dibuat');
        
        return redirect()->route('location.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->location->find($id);

        if (!$data) {
            notify()->warning('Lokasi tidak ditemukan');
            return redirect()->back();
        }

        $skpd = $this->skpd->find($data->skpd_id);
        
        return view('admin.location.edit', compact('data', 'skpd'));
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
        $data = $this->location->update($request, $id);

        notify()->success('Lokasi berhasil diupdate');

        // return redirect()->route('location.show', ['id' => $data->id]);
        return redirect()->route('location.index');
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
     * Select2 API
     * 
     */
    public function selectList(Request $request)
    {
        $name           = $request->q;
        $workPackageId  = $request->work_package_id; 

        $res = $this->location->getByName($name, $workPackageId);

        return response()->json($res);
    }
}
