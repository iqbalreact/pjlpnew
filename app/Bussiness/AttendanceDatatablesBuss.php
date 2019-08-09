<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AttendanceDatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\OccupationServiceInterface;
use App\Services\Contracts\RoleServiceInterface;
use App\Services\Contracts\ActivityLogServiceInterface;

use App\Models\Activity;
use App\Models\Contract;
use App\Models\Occupation;
use App\Models\Position;
use App\Models\Program;
use App\Models\Skpd;
use App\Models\WorkPackage;

use Carbon\Carbon;
use DataTables;

class AttendanceDatatablesBuss implements AttendanceDatatablesBussInterface
{
    public function __construct(
        ActivityLogServiceInterface $activityLog,
        DatatablesRepoInterface $datatablesRepo,
        OccupationServiceInterface $occupationService,
        RoleServiceInterface $roleService
    ) {
        $this->activityLog          = $activityLog;
        $this->datatablesRepo       = $datatablesRepo;
        $this->occupationService    = $occupationService;
        $this->roleService          = $roleService;
    }

    public function fetchTemplate(Request $request)
    {
        $query = $this->datatablesRepo->fetchEmployeeDatas($request);
        
        return Datatables::of($query)
                        ->addColumn('textbox',  function($data) { 
                            return $this->textBox($data->name);  
                        })
                        ->addColumn('ceremony',  function($data) { 
                            return $this->ceremony();  
                        })
                        ->addColumn('late',  function($data) { 
                            return $this->late();  
                        })
                        ->addColumn('save',  function($data) { 
                            return $this->saveButton();  
                        })
                        ->rawColumns([
                            'save', 
                            'textbox', 
                            'ceremony',
                            'late'
                        ])
                        ->make(true);
    }

    private function ceremony()
    {
        $select = '<select name="ceremony" type="checkbox" class="form-control">';
        $select .= '<option value="1" selected>Ya</option>';  
        $select .= '<option value="0">Tidak</option>';  
        $select .= '</select>';

        return $select;
    }

    private function late()
    {
        $select = '<select name="late" type="checkbox" class="form-control">';
        $select .= '<option value="1">Ya</option>';  
        $select .= '<option value="0" selected>Tidak</option>';  
        $select .= '</select>';

        return $select;
    }

    private function textBox($value)
    {
        return '<input type="textbox" class="form-control" value="80:80" style="width:60px;">';
    }

    private function saveButton()
    {
        return '<button class="btn btn-sm btn-primary"><i class="fa fa-save"></i></button>';
    }

   
}