<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\ActivityLogServiceInterface;

use DataTables;

class DatatablesBuss implements DatatablesBussInterface
{
    public function __construct(
        ActivityLogServiceInterface $activityLog,
        DatatablesRepoInterface $datatablesRepo
    ) {
        $this->activityLog      = $activityLog;
        $this->datatablesRepo   = $datatablesRepo;
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
}