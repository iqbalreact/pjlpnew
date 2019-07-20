<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Repository\Contracts\DatatableRepoInterface;

use DataTables;

class DatatablesBuss implements DatatablesBussInterface
{
    public function __construct(DatatablesRepoInterface $datatablesRepo)
    {
        $this->datatablesRepo = $datatablesRepo;
    }

    public function fetchEmployeeDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchEmployeeDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'employees.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                  <a href="{{ URL::route( \'employees.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }
}