<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\RoleServiceInterface;

use DataTables;

class DatatablesBuss implements DatatablesBussInterface
{
    public function __construct(DatatablesRepoInterface $datatablesRepo, RoleServiceInterface $roleService)
    {
        $this->datatablesRepo   = $datatablesRepo;
        $this->roleService      = $roleService;
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