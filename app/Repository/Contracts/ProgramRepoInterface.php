<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface ProgramRepoInterface
{
    public function count($skpd_id = null);

    public function find($id);

    public function getByName($name, $skpd_id = null);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}