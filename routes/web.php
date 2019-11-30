<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'admin', 'middleware' => ['auth']], function () {


    Route::get('/dashboard', 'PageController@dashboard')->name('dashboard');

    Route::get('/about', function () {
        return view('dashboard');
    })->name('about');

    Route::get('/account/updateProfile', 'AccountController@updateProfile')->name('account.updateProfile');
    Route::put('/account/updateProfile/{id}', 'AccountController@postUpdateProfile')->name('account.updateProfile.post');

    Route::get('/account/updatePassword', 'AccountController@updatePassword')->name('account.updatePassword');
    Route::put('/account/updatePassword/{id}', 'AccountController@postUpdatePassword')->name('account.updatePassword.post');

    Route::get('/contract/detail/{id}', 'ContractController@detail')->name('contract.detail');
    Route::get('/contract/findActiveContract', 'ContractController@findActiveContract')->name('contract.findActiveContract');
    
    Route::resource('activity', 'ActivityController');
    Route::resource('account', 'AccountController');
    Route::resource('assessment', 'AssessmentController');
    Route::resource('attendance', 'AttendanceController');
    Route::resource('contract', 'ContractController');
    Route::resource('employee', 'EmployeeController');
    Route::resource('functionary', 'FunctionaryController');
    Route::resource('location', 'LocationController');
    Route::resource('leaveEmployee', 'LeaveEmployeeController');
    Route::resource('log', 'LogController')->only('index', 'show');
    Route::resource('occupation', 'OccupationController');
    Route::resource('paymentLetter', 'PaymentLetterController');
    Route::resource('payroll', 'PayrollController');
    Route::resource('program', 'ProgramController');
    Route::resource('position', 'PositionController');
    Route::resource('positionCategory', 'PositionCategoryController');
    Route::resource('skpd', 'SkpdController');
    Route::resource('salaryComponent', 'SalaryComponentController');
    Route::resource('startWorkingLetter', 'StartWorkingLetterController');
    Route::resource('workAdministration', 'WorkAdministrationController');
    Route::resource('workDay', 'WorkDayController');
    Route::resource('workHandover', 'WorkHandoverController');
    Route::resource('workHandoverPpkom', 'WorkHandoverPpkomController');
    Route::resource('workInspection', 'WorkInspectionController');
    Route::resource('workPackage', 'WorkPackageController');

    Route::group(['prefix' => 'report'], function() {
        Route::get('workInspection', 'ReportController@workInspection')->name('report.workInspection');
        Route::get('workHandoverPage', 'ReportController@workHandOverPage')->name('report.workHandOverPage');
        Route::get('paymentPage', 'ReportController@paymentPage')->name('report.paymentPage');


        Route::get('workHandover', 'ReportController@workHandover')->name('report.workHandover');
        Route::get('payment', 'ReportController@payment')->name('report.payment');
        Route::get('workInspectionLetter', 'ReportController@workInspectionLetter')->name('report.workInspectionLetter');
        Route::post('workInspection', 'ReportController@postWorkInspectionCeremony')->name('report.workInspection.post');
    });

    Route::post('/leave/generateDateRange', 'LeaveEmployeeController@generateDateRange')->name('leave.genereateDateRange');


    // Datatables
    Route::group(['prefix' => 'data'], function() {
        Route::get('assessment', 'DatatablesController@fetchAssessmentDatas')->name('fetch.assessment');
        Route::get('assessmentByEmployeeId', 'DatatablesController@fetchAssessmentByEmployeeIdData')->name('fetch.assessmentByEmployeeId');
        Route::get('attendance', 'DatatablesController@fetchAttendanceDatas')->name('fetch.attendance');
        Route::get('account', 'DatatablesController@fetchAccountDatas')->name('fetch.account');
        Route::get('activity', 'DatatablesController@fetchActivityDatas')->name('fetch.activity');
        Route::get('activitylog', 'DatatablesController@fetchActivityLog')->name('fetch.activityLog');
        Route::get('contract', 'DatatablesController@fetchContractIndexDatas')->name('fetch.contract');
        Route::get('contractDetail', 'DatatablesController@fetchContractDetailDatas')->name('fetch.contract.detail');
        Route::get('employee', 'DatatablesController@fetchEmployeeDatas')->name('fetch.employee');
        Route::get('functionary', 'DatatablesController@fetchFunctionaryDatas')->name('fetch.functionary');
        Route::get('historyLeaveEmployee', 'DatatablesController@fetchHistoryLeaveEmployeeDatas')->name('fetch.historyLeaveEmployee');
        Route::get('location', 'DatatablesController@fetchLocationDatas')->name('fetch.location');
        Route::get('occupation', 'DatatablesController@fetchOccupationDatas')->name('fetch.occupation');
        Route::get('paymentLetter', 'DatatablesController@fetchPaymentLetterDatas')->name('fetch.paymentLetter');
        Route::get('payroll', 'DatatablesController@fetchPayrollDatas')->name('fetch.payroll');
        Route::get('program', 'DatatablesController@fetchProgramDatas')->name('fetch.program');
        Route::get('position', 'DatatablesController@fetchPositionDatas')->name('fetch.position');
        Route::get('positionCategory', 'DatatablesController@fetchPositionCategoryDatas')->name('fetch.positionCategory');
        Route::get('salaryComponent', 'DatatablesController@fetchSalaryComponentDatas')->name('fetch.salaryComponent');
        Route::get('skpd', 'DatatablesController@fetchSkpdDatas')->name('fetch.skpd');
        Route::get('startWorkingLetter', 'DatatablesController@fetchStartWorkingLetterDatas')->name('fetch.startWorkingLetter');
        Route::get('workAdministration', 'DatatablesController@fetchWorkAdministrationDatas')->name('fetch.workAdministration');
        Route::get('workDay', 'DatatablesController@fetchWorkDayDatas')->name('fetch.workDay');
        Route::get('workHandover', 'DatatablesController@fetchWorkHandoverDatas')->name('fetch.workHandover');
        Route::get('workHandoverPpkom', 'DatatablesController@fetchWorkHandoverPpkomDatas')->name('fetch.workHandoverPpkom');
        Route::get('workInspection', 'DatatablesController@fetchWorkInspectionDatas')->name('fetch.workInspection');
        Route::get('workPackage', 'DatatablesController@fetchWorkPackageDatas')->name('fetch.workPackage');
    });

    Route::group(['prefix' => 'code'], function() {
        Route::get('program', 'ProgramController@code')->name('code.program');
        Route::get('activity', 'ActivityController@code')->name('code.activity');
        Route::get('workPackage', 'WorkPackageController@code')->name('code.workPackage');
    });

    //Chart
    Route::group(['prefix' => 'chart'], function() {
        Route::get('bank', 'EmployeeController@chartBank')->name('chart.bank');
        Route::get('gender', 'EmployeeController@chartGender')->name('chart.gender');
        Route::get('religion', 'EmployeeController@chartReligion')->name('chart.religion');
    });

    // Export
    Route::group(['prefix' => 'export'], function() {
        Route::get('workAdministration/{id}', 'WorkAdministrationController@export')->name('export.workAdministration');
        Route::get('workHandover/{id}', 'WorkHandoverController@export')->name('export.workHandover');
        Route::get('workHandoverPpkom/{id}', 'WorkHandoverPpkomController@export')->name('export.workHandoverPpkom');
        Route::get('workInspection/{id}', 'WorkInspectionController@export')->name('export.workInspection');
        Route::get('paymentLetter/{id}', 'PaymentLetterController@export')->name('export.paymentLetter');
        Route::get('startWorkingLetter/{id}', 'StartWorkingLetterController@export')->name('export.startWorkingLetter');
        Route::get('pjlp', 'EmployeeController@exportEmployee')->name('export.employee');
        Route::get('pjlp/{id}', 'EmployeeController@exportDetailEmployee')->name('export.employee.detail');
    });

    // Select2
    Route::group(['prefix' => 'select'], function(){
        Route::get('activity', 'ActivityController@selectList')->name('select.activity');
        Route::get('employee', 'EmployeeController@selectList')->name('select.employee');
        Route::get('functionary', 'FunctionaryController@selectList')->name('select.functionary');
        Route::get('location', 'LocationController@selectList')->name('select.location');
        Route::get('occupation', 'OccupationController@selectList')->name('select.occupation');
        Route::get('position', 'PositionController@selectList')->name('select.position');
        Route::get('program', 'ProgramController@selectList')->name('select.program');
        Route::get('salaryComponent', 'SalaryComponentController@selectList')->name('select.salaryComponent');
        Route::get('skpd', 'SkpdController@selectList')->name('select.skpd');
        Route::get('workPackage', 'WorkPackageController@selectList')->name('select.workPackage');
    });

    // Route::get('/home', 'HomeController@index')->name('home');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
