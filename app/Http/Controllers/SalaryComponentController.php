<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\SalaryComponentRequest;

use App\Bussiness\Contracts\SalaryComponentBussInterface;

class SalaryComponentController extends Controller
{
    public function __construct(SalaryComponentBussInterface $salaryComponent) 
    {
        $this->salaryComponent = $salaryComponent;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.salaryComponent.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.salaryComponent.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SalaryComponentRequest $request)
    {
        $data = $this->salaryComponent->store($request);

        notify()->success('Komponen gaji berhasil dibuat');
        
        return redirect()->route('salaryComponent.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $data = $this->salaryComponent->find($id);

        // if (!$data) {
        //     notify()->warning('Komponen gaji tidak ditemukan');
        //     return redirect()->back();
        // }

        // return view('admin.salaryComponent.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->salaryComponent->find($id);

        if (!$data) {
            notify()->warning('Komponen gaji tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.salaryComponent.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SalaryComponentRequest $request, $id)
    {
        $data = $this->salaryComponent->update($request, $id);

        notify()->success('Komponen gaji berhasil diupdate');

        return redirect()->route('salaryComponent.index');
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

        $res = $this->salaryComponent->getByName($name);

        return response()->json($res);
    }
}
