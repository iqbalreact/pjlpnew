<?php

namespace App\Bussiness\Contracts;

use Illuminate\Http\Request;

interface PositionCategoryBussInterface
{
    public function all();

    public function find($id);

    public function pluckCategory();

    public function store(Request $request);    

    public function update(Request $request, $id);    
}