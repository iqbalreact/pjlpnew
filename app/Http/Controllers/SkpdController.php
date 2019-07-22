<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\SkpdRequest;

use App\Bussiness\Contracts\SkpdBussInterface;

class SkpdController extends Controller
{
    public function __construct(SkpdBussInterface $skpd) 
    {
        $this->skpd = $skpd;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.skpd.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.skpd.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SkpdRequest $request)
    {
        $data = $this->skpd->store($request);

        notify()->success('Skpd berhasil dibuat');
        
        return redirect()->route('skpd.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->skpd->find($id);

        if (!$data) {
            notify()->warning('Skpd tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.skpd.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->skpd->find($id);

        if (!$data) {
            notify()->warning('Skpd tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.skpd.edit', compact('data'));
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
        $data = $this->skpd->update($request, $id);

        notify()->success('Skpd berhasil diupdate');

        return redirect()->route('skpd.show', ['id' => $data->id]);
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
        $name = $request->q;

        $res = $this->skpd->getByName($name);

        return response()->json($res);
    }
}
