<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface LocationRepoInterface
{
    public function find($id);

    public function getByName($name, $skpd_id = null);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}