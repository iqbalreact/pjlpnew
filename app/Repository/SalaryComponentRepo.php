<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\SalaryComponentRepoInterface;

use App\Models\SalaryComponent;

class SalaryComponentRepo implements SalaryComponentRepoInterface
{
    public function find($id)
    {
        $data = SalaryComponent::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function getByName($name)
    {
        $query = SalaryComponent::query();

        $query = $query->where('name', 'LIKE', '%'.$name.'%')
                    ->orderBy('name')
                    ->take(20)
                    ->get();

        return $query;
    }

    public function store(Request $request)
    {
        $data = new SalaryComponent();
        $data->name         = $request->name;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = SalaryComponent::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->name         = $request->name;
        $data->update();

        return $data;
    }
}