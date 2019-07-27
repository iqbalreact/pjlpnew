<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface WorkPackageRepoInterface
{
    public function find($id);

    public function getByName($name, $activity_id = null);
    
    public function store(Request $request);    

    public function update(Request $request, $id);
}