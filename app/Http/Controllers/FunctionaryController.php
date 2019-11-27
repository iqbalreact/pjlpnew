<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\FunctionaryBussInterface;

use App\Http\Requests\FunctionaryRequest;

class FunctionaryController extends Controller
{
    public function __construct(FunctionaryBussInterface $functionary)
    {
        $this->functionary = $functionary;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.functionary.index');        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.functionary.create');        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FunctionaryRequest $request)
    {
        $data = $this->functionary->store($request);

        notify()->success('Pejabat berhasil dibuat');
        
        return redirect()->route('functionary.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->functionary->find($id);

        if (!$data) {
            notify()->warning('Pejabat tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.functionary.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->functionary->find($id);

        if (!$data) {
            notify()->warning('Pejabat tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.functionary.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(FunctionaryRequest $request, $id)
    {
        $data = $this->functionary->update($request, $id);

        notify()->success('Pejabat berhasil diupdate');

        return redirect()->route('functionary.show', ['id' => $data->id]);
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
        $name       = $request->q;
        $occupation = $request->occupation ?? null;

        $res = $this->functionary->getByName($name, $occupation);

        return response()->json($res);
    }
}
