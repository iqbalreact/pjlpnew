<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface ActivityRepoInterface
{
    public function find($id);

    public function count($program_id = null);

    public function getByName($name, $program_id = null);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}