<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\PositionBussInterface;
use App\Bussiness\Contracts\PositionCategoryBussInterface;

use App\Http\Requests\PositionRequest;

class PositionController extends Controller
{
    public function __construct(
        PositionBussInterface $position,
        PositionCategoryBussInterface $positionCategory
    ) {
        $this->position             = $position;
        $this->positionCategory     = $positionCategory;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.position.index');        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = $this->positionCategory->pluckCategory();

        return view('admin.position.create', compact('categories'));        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PositionRequest $request)
    {
        $data = $this->position->store($request);

        notify()->success('Posisi berhasil dibuat');
        
        return redirect()->route('position.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->position->find($id);

        if (!$data) {
            notify()->warning('Posisi tidak ditemukan');
            return redirect()->back();
        }
        
        $category = $this->positionCategory->find($data->position_category_id);

        return view('admin.position.show', compact('data', 'category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->position->find($id);

        if (!$data) {
            notify()->warning('Posisi tidak ditemukan');
            return redirect()->back();
        }

        $categories = $this->positionCategory->pluckCategory();

        return view('admin.position.edit', compact('data', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PositionRequest $request, $id)
    {
        $data = $this->position->update($request, $id);

        notify()->success('Posisi berhasil diupdate');

        return redirect()->route('position.show', ['id' => $data->id]);
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

        $res = $this->position->getByName($name);

        return response()->json($res);
    }
}
