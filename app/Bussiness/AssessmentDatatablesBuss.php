<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\AssessmentDatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\OccupationServiceInterface;
use App\Services\Contracts\RoleServiceInterface;
use App\Services\Contracts\ActivityLogServiceInterface;

use App\Models\Activity;
use App\Models\Contract;

use Carbon\Carbon;
use DataTables;

class AssessmentDatatablesBuss implements AssessmentDatatablesBussInterface
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
        $query = $this->datatablesRepo->fetchAssessmentData($request);
        
        return Datatables::of($query)
                        ->addColumn('DT_RowId', function($data) { 
                            return 'row-'.$data->id;  
                        })
                        ->addColumn('employee_nipj', function(Contract $contract) {
                            return $contract->employee->nipj;
                        })
                        ->addColumn('employee_name', function(Contract $contract) {
                            return $contract->employee->name;
                        })
                        ->addColumn('work_completion_rate',  function($data) { 
                            return $this->workCompletionRate($data);  
                        })
                        ->addColumn('work_completion_time',  function($data) { 
                            return $this->workCompletionTime($data);  
                        })
                        ->addColumn('work_quality',  function($data) { 
                            return $this->workQuality($data);  
                        })
                        ->addColumn('obidence_on_obligation',  function($data) { 
                            return $this->obidenceOnObligation($data);  
                        })
                        ->addColumn('obidence_on_rule',  function($data) { 
                            return $this->obidenceOnRule($data);  
                        })
                        ->addColumn('save',  function($data) { 
                            return $this->saveButton();  
                        })
                        ->addColumn('status',  function($data) { 
                            return $this->status($data);  
                        })
                        ->rawColumns([
                            'save', 
                            'work_completion_rate',
                            'work_completion_time',
                            'work_quality',
                            'obidence_on_obligation',
                            'obidence_on_rule',
                            'status',
                        ])
                        ->make(true);
    }

    private function workCompletionRate($data)
    {
        $data = $data->employee->assessments->first();
        
        $value = 0;
        if ($data) {
            $value = $data->work_completion_rate;
        }

        $select = '<select name="work_completion_rate" type="checkbox" class="form-control">';
        $select .= $this->generateOption($value);
        $select .= '</select>';

        return $select;
    }

    private function workCompletionTime($data)
    {
        $data = $data->employee->assessments->first();
        
        $value = 0;
        if ($data) {
            $value = $data->work_completion_time;
        }

        $select = '<select name="work_completion_time" type="checkbox" class="form-control">';
        $select .= $this->generateOption($value); 
        $select .= '</select>';

        return $select;
    }

    private function workQuality($data)
    {
        $data = $data->employee->assessments->first();
        
        $value = 0;
        if ($data) {
            $value = $data->work_quality;
        }

        $select = '<select name="work_quality" type="checkbox" class="form-control">';
        $select .= $this->generateOption($value); 
        $select .= '</select>';

        return $select;
    }

    private function obidenceOnObligation($data)
    {
        $data = $data->employee->assessments->first();
        
        $value = 0;
        if ($data) {
            $value = $data->obidence_on_obligation;
        }

        $select = '<select name="obidence_on_obligation" type="checkbox" class="form-control">';
        $select .= $this->generateOption($value); 
        $select .= '</select>';

        return $select;
    }

    private function obidenceOnRule($data)
    {
        $data = $data->employee->assessments->first();
        
        $value = 0;
        if ($data) {
            $value = $data->obidence_on_rule;
        }

        $select = '<select name="obidence_on_rule" type="checkbox" class="form-control">';
        $select .= $this->generateOption($value); 
        $select .= '</select>';

        return $select;
    }

    private function generateOption($value)
    {
        $select = null;

        for ($i=1;$i<=4;$i++) {
            if ($value == 0 && $i == 4) {
                $select .= '<option value='.$i.' selected>'.$i.'</option>';
            }else if ($value == $i) {
                $select .= '<option value='.$i.' selected>'.$i.'</option>';
            } else {
                $select .= '<option value='.$i.' >'.$i.'</option>';
            }
        }

        return $select;
    }

    private function saveButton()
    {
        return '<button class="btn btn-sm btn-primary"><i class="fa fa-save"></i></button>';
    }

    private function status($data)
    {
        if (!empty($data->employee->assessments->first())) {
            return '<div class="stateStatus"><img src="/img/checked.png"></div>';
        }

        return '<div class="stateStatus"></div>';
    }
}