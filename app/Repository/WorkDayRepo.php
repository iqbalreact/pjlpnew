<?php

namespace App\Repository;

use Illuminate\Http\Request;

use App\Repository\Contracts\WorkDayRepoInterface;

use App\Models\WorkDay;

use Carbon\Carbon;

class WorkDayRepo implements WorkDayRepoInterface
{
    public function find($id)
    {
        $data = WorkDay::find($id);
        
        if (is_null($data)) {
            return false;
        }

        return $data;
    }

    public function findByYear($year)
    {
        $data = WorkDay::where('year', $year)->first();
    
        return $data;
    }

    public function store(Request $request)
    {
        $data = new WorkDay();
        $data->year         = $request->year;
        $data->january      = $request->january;
        $data->february     = $request->february;
        $data->march        = $request->march;
        $data->april        = $request->april;
        $data->may          = $request->may;
        $data->june         = $request->june;
        $data->july         = $request->july;
        $data->august       = $request->august;
        $data->september    = $request->september;
        $data->october      = $request->october;
        $data->november     = $request->november;
        $data->december     = $request->december;
        $data->save();

        return $data;
    }

    public function update(Request $request, $id)
    {
        $data = WorkDay::find($id);

        if (is_null($data)) {
            return false;
        }

        $data->year         = $request->year;
        $data->january      = $request->january;
        $data->february     = $request->february;
        $data->march        = $request->march;
        $data->april        = $request->april;
        $data->may          = $request->may;
        $data->june         = $request->june;
        $data->july         = $request->july;
        $data->august       = $request->august;
        $data->september    = $request->september;
        $data->october      = $request->october;
        $data->november     = $request->november;
        $data->december     = $request->december;
        $data->update();

        return $data;
    }
}