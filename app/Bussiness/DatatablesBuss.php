<?php

namespace App\Bussiness;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\DatatablesBussInterface;
use App\Repository\Contracts\DatatablesRepoInterface;
use App\Services\Contracts\OccupationServiceInterface;
use App\Services\Contracts\RoleServiceInterface;
use App\Services\Contracts\ActivityLogServiceInterface;

use App\Models\Activity;
use App\Models\Contract;
use App\Models\HistoryLeaveEmployee;
use App\Models\Location;
use App\Models\Occupation;
use App\Models\PaymentLetter;
use App\Models\Position;
use App\Models\Program;
use App\Models\Skpd;
use App\Models\WorkHandover;
use App\Models\WorkPackage;

use Carbon\Carbon;
use DataTables;

class DatatablesBuss implements DatatablesBussInterface
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

    public function fetchActivityDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchActivityDatas($request);

        return Datatables::of($query)
                        ->addColumn('program', function (Activity $activity) {
                            return $activity->program->name ?? '';
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

    public function fetchContractIndexDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchContractIndexDatas($request);

        return Datatables::of($query)
                        ->addColumn('activity', function(WorkPackage $workPackage) {
                            return $workPackage->activity->name;
                        })
                        ->addColumn('program', function(WorkPackage $workPackage) {
                            return $workPackage->activity->program->name;
                        })
                        ->addColumn('actions', 
                            ' <a href="{{ URL::route( \'contract.show\', array( $id )) }}" class="btn btn-default btn-xs" ><i class="fa fa-eye"></i> View</a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchContractDetailDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchContractDetailDatas($request);
        
        return Datatables::of($query)
                        ->addColumn('employee_nipj', function(Contract $contract) {
                            return $contract->employee->nipj;
                        })
                        ->addColumn('employee_name', function(Contract $contract) {
                            return $contract->employee->name;
                        })
                        ->addColumn('position', function(Contract $contract) {
                            return $contract->position->name;
                        })
                        ->addColumn('location', function(Contract $contract) {
                            return $contract->location->name;
                        })
                        ->addColumn('year', function($data) {
                            return Carbon::parse($data->start_date)->format('Y');
                        })
                        ->addColumn('status_transform', function($data) {
                            
                            if ($data->status == "non_active") {
                                return '<label class="label label-danger">Non aktif</label>';
                            }

                            return '<label class="label label-success">Aktif</label>';
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'contract.detail\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'contract.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions', 'status_transform'])
                        ->make(true);
    }

    public function fetchEmployeeDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchEmployeeDatas($request);

        return Datatables::of($query)
                        ->addColumn('avatar', function($data) {
                            $avatar = $data->getAvatar();

                            return '<img src='.$avatar.' class="img-circle" height="30px">';
                        })
                        ->addColumn('position', function($data) {
                            return isset($data->activeContracts->first()->position->name) ? $data->activeContracts->first()->position->name : "";
                        })
                        ->addColumn('actions', 
                                '<div class="btn-group" role="group" aria-label="EmployeeActions">
                                    <a href="{{ URL::route( \'employee.show\', array( $id )) }}" class="btn btn-default btn-xs" ><i class="fa fa-eye"></i> View </a>
                                    <a href="{{ URL::route( \'employee.edit\', array( $id )) }}" class="btn btn-default btn-xs" ><i class="fa fa-pencil"></i> Edit</a>
                                    <a href="{{ URL::route( \'export.employee.detail\', array( $id )) }}" class="btn btn-default btn-xs" ><i class="fa fa-download"></i> Export</a>
                                </div>')
                        ->rawColumns(['actions', 'avatar'])
                        ->make(true);
    }

    public function fetchFunctionaryDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchFunctionaryDatas($request);

        return Datatables::of($query)
                        ->addColumn('avatar', function($data) {
                            $avatar = $data->getAvatar();

                            return '<img src='.$avatar.' class="img-circle" height="50px">';
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'functionary.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'functionary.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions', 'avatar'])
                        ->make(true);
    }

    public function fetchHistoryLeaveEmployeeDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchHistoryLeaveEmployeeDatas($request);

        return Datatables::of($query)
                        ->addColumn('employee_nipj', function(HistoryLeaveEmployee $leave) {
                            return $leave->employee->nipj;
                        })
                        ->addColumn('employee_name', function(HistoryLeaveEmployee $leave) {
                            return $leave->employee->name;
                        })
                        ->addColumn('type', function($data) {
                            if($data->leave_type == 1) {
                                return 'Cuti Melahirkan / Kecelakaan kerja';
                            } 

                            return 'Cuti Reguler';
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'leaveEmployee.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>')
                        ->rawColumns(['actions', 'avatar'])
                        ->make(true);
    }

    public function fetchLocationDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchLocationDatas($request);

        return Datatables::of($query)
                        ->addColumn('skpd', function(Location $location) {
                            return $location->skpd->name;                            
                        })
                        ->addColumn('actions', 
                                '<a href="{{ URL::route( \'location.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchOccupationDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchOccupationDatas($request);

        return Datatables::of($query)
                        ->addColumn('functionary', function(Occupation $occupation) {
                            return $occupation->functionary->name;                            
                        })
                        ->addColumn('skpd', function(Occupation $occupation) {
                            return $occupation->skpd->name;                            
                        })
                        ->addColumn('position_transform', function($data) {
                            return $this->occupationService->occupationTransform($data->position);
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'occupation.show\', array( $id )) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'occupation.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchPaymentLetterDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchPaymentLetterDatas($request);

        return Datatables::of($query)
                        ->addColumn('employee', function (PaymentLetter $paymentLetter) {
                            return $paymentLetter->employee->name;
                        })
                        ->addColumn('position', function (PaymentLetter $paymentLetter) {
                            return $paymentLetter->contract->position->name ?? ''; 
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'paymentLetter.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'paymentLetter.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchPositionDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchPositionDatas($request);

        return Datatables::of($query)
                        ->addColumn('category', function (Position $position) {
                            return $position->positionCategory->name;
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'position.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'position.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchPositionCategoryDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchPositionCategoryDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'positionCategory.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'positionCategory.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
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

    public function fetchSalaryComponentDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchSalaryComponentDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'salaryComponent.edit\', array( $id )) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
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

    public function fetchWorkDayDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchWorkDayDatas($request);

        return Datatables::of($query)
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'workDay.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'workDay.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchWorkHandoverDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchWorkHandoverDatas($request);

        return Datatables::of($query)
                        ->addColumn('employee', function (WorkHandover $workHandover) {
                            return $workHandover->employee->name;
                        })
                        ->addColumn('position', function (WorkHandover $workHandover) {
                            return $workHandover->contract->position->name ?? ''; 
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'workHandover.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'workHandover.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }

    public function fetchWorkPackageDatas(Request $request)
    {
        $query = $this->datatablesRepo->fetchWorkPackageDatas($request);

        return Datatables::of($query)
                        ->addColumn('activity', function (WorkPackage $workPackage) {
                            return $workPackage->activity->name;
                        })
                        ->addColumn('actions', 
                                ' <a href="{{ URL::route( \'workPackage.show\', array( $id)) }}" class="btn btn-primary btn-sm" ><i class="fa fa-eye"></i> </a>
                                <a href="{{ URL::route( \'workPackage.edit\', array( $id)) }}" class="btn btn-success btn-sm" ><i class="fa fa-pencil"></i> </a> ')
                        ->rawColumns(['actions'])
                        ->make(true);
    }
}