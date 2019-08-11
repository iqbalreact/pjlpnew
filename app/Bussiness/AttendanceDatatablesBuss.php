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
        $query = $this->datatablesRepo->fetchAttendanceData($request);
        
        return Datatables::of($query)
                        ->addColumn('employee_nipj', function(Contract $contract) {
                            return $contract->employee->nipj;
                        })
                        ->addColumn('employee_name', function(Contract $contract) {
                            return $contract->employee->name;
                        })
                        ->addColumn('from',  function($data) { 
                            return $this->from($data);  
                        })
                        ->addColumn('to',  function($data) { 
                            return $this->to($data);  
                        })
                        ->addColumn('ceremony',  function($data) { 
                            return $this->ceremony($data);  
                        })
                        ->addColumn('late',  function($data) { 
                            return $this->late($data);  
                        })
                        ->addColumn('save',  function($data) { 
                            return $this->saveButton();  
                        })
                        ->addColumn('status',  function($data) { 
                            return $this->status($data);  
                        })
                        ->rawColumns([
                            'save', 
                            'from',
                            'to', 
                            'ceremony',
                            'late',
                            'status',
                            'plainTest'
                        ])
                        ->make(true);
    }

    private function ceremony($data)
    {
        $data = $data->employee->attendances->first();

        $select = '<select name="ceremony" type="checkbox" class="form-control">';
        
        if(!isset($data) or $data->ceremony == "1") {
            $select .= '<option value="1" selected>Ya</option>';  
            $select .= '<option value="0">Tidak</option>';  
        } else {
            $select .= '<option value="1">Ya</option>';  
            $select .= '<option value="0" selected>Tidak</option>';  
        }

        $select .= '</select>';

        return $select;
    }

    private function late($data)
    {
        $data = $data->employee->attendances->first();

        $select = '<select name="late" type="checkbox" class="form-control">';

        if(isset($data) &&  $data->late == "1") {
            $select .= '<option value="1" selected>Ya</option>';  
            $select .= '<option value="0">Tidak</option>';  
        } else {
            $select .= '<option value="1">Ya</option>';  
            $select .= '<option value="0" selected>Tidak</option>';  
        }

        $select .= '</select>';

        return $select;
    }

    private function from($data)
    {
        $data = $data->employee->attendances->first();
        if (!empty($data)) {
            return '<input type="textbox" name="from" class="form-control time" value="'.$data->from.'" style="width:60px;">';
        }

        return '<input type="textbox" name="from" class="form-control time" value="08:00" style="width:60px;">';
    }

    private function to($data)
    {
        $data = $data->employee->attendances->first();
        if (!empty($data)) {
            return '<input type="textbox" name="to" class="form-control time" value="'.$data->to.'" style="width:60px;">';
        }

        return '<input type="textbox" name="to" class="form-control time" value="17:00" style="width:60px;">';
    }

    private function saveButton()
    {
        return '<button class="btn btn-sm btn-primary"><i class="fa fa-save"></i></button>';
    }

    private function status($data)
    {
        if (!empty($data->employee->attendances->first())) {
            return '<div class="stateStatus"><img src="/img/checked.png"></div>';
        }

        return '<div class="stateStatus"></div>';
    }
}