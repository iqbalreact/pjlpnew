<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\RoleServiceInterface;
use App\Services\Contracts\ActivityLogServiceInterface;

use App\Models\Skpd;
use App\Models\Program;
use App\Models\Activity;
use App\Models\WorkPackage;

use DataTables;

class DatatablesBuss implements DatatablesBussInterface
{
    public function __construct(
        ActivityLogServiceInterface $activityLog,
        DatatablesRepoInterface $datatablesRepo,
        RoleServiceInterface $roleService
    ) {
        $this->activityLog      = $activityLog;
        $this->datatablesRepo   = $datatablesRepo;
        $this->roleService      = $roleService;
    }

    public function fetchActivityDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchActivityDatas($request);

        return Datatables::of($query)
                        ->addColumn('program', function (Activity $activity) {
                            return $activity->program->name;
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'activity.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'activity.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchActivityLog(Request $request)
    {
        $query = $this->datatablesRepo->fetchActivityLog($request);

        return Datatables::of($query)
                        ->addColumn('causer_name', function($data) {
                            if (isset($data->causer->name)) {
                                return '<a href="/admin/account/'.$data->causer_id.'">'.$data->causer->name.'</a>';
                            }

                            return '-';
                        })
                        ->addColumn('subject_name', function($data) {
                            if (isset($data->subject->name)) {
                                $subjectRoute = $this->activityLog->getSubjectRoute($data->subject_type) . $data->subject_id;
                                return '<a href="'.$subjectRoute.'">'.$data->subject->name.'</a>';
                            }

                            return '-';
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'log.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a> ')
                        ->rawColumns(['actions', 'causer_name', 'subject_name'])
                        ->make(true);
    }

    public function fetchAccountDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchAccountDatas($request);

        return Datatables::of($query)
                        ->addColumn('role', function($data) {
                            $roleName = !is_null($data->roles->first()) ? $data->roles->first()->name : '';

                            return $this->roleService->roleNameTransform($roleName);
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'account.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'account.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchEmployeeDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchEmployeeDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'employee.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'employee.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchFunctionaryDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchFunctionaryDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'functionary.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'functionary.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchProgramDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchProgramDatas($request);

        return Datatables::of($query)
                        ->addColumn('skpd', function (Program $program) {
                            return $program->skpd->name;
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'program.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'program.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchSkpdDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchSkpdDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'skpd.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'skpd.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchWorkPackageDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchWorkPackageDatas($request);

        return Datatables::of($query)
                        ->addColumn('workPackage', function (WorkPackage $workPackage) {
                            return $workPackage->activity->name;
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'workPackage.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'workPackage.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }
}