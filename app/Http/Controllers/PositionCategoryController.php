<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PositionCategoryBussInterface;

use App\Http\Requests\PositionCategoryRequest;

class PositionCategoryController extends Controller
{
    public function __construct(PositionCategoryBussInterface $positionCategory)
    {
        $this->positionCategory  = $positionCategory;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.positionCategory.index');        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.positionCategory.create');        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PositionCategoryRequest $request)
    {
        $data = $this->positionCategory->store($request);

        notify()->success('Kategori posisi berhasil dibuat');
        
        return redirect()->route('positionCategory.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->positionCategory->find($id);

        if (!$data) {
            notify()->warning('Kategori posisi tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.positionCategory.show', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->positionCategory->find($id);

        if (!$data) {
            notify()->warning('Kategori posisi tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.positionCategory.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PositionCategoryRequest $request, $id)
    {
        $data = $this->positionCategory->update($request, $id);

        notify()->success('Kategori posisi berhasil diupdate');

        return redirect()->route('positionCategory.show', ['id' => $data->id]);
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
