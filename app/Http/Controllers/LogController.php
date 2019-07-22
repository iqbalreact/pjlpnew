<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Services\Contracts\ActivityLogServiceInterface;

class LogController extends Controller
{
    public function __construct(ActivityLogServiceInterface $activityLog)
    {
        $this->activityLog = $activityLog;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.log.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->activityLog->find($id);

        if (!$data) {
            notify()->warning('Log tidak ditemukan');
            return redirect()->back();
        }

        $data->route = $this->activityLog->getSubjectRoute($data->subject_type);
        
        return view('admin.log.show', compact('data'));
    }
}
