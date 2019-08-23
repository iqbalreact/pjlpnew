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


    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/about', function () {
        return view('dashboard');
    })->name('about');

    Route::resource('attendance', 'AttendanceController');
    Route::resource('activity', 'ActivityController');
    Route::resource('account', 'AccountController');
    Route::resource('contract', 'ContractController');
    Route::resource('employee', 'EmployeeController');
    Route::resource('functionary', 'FunctionaryController');
    Route::resource('location', 'LocationController');
    Route::resource('log', 'LogController')->only('index', 'show');
    Route::resource('occupation', 'OccupationController');
    Route::resource('program', 'ProgramController');
    Route::resource('position', 'PositionController');
    Route::resource('positionCategory', 'PositionCategoryController');
    Route::resource('skpd', 'SkpdController');
    Route::resource('salaryComponent', 'SalaryComponentController');
    Route::resource('workDay', 'WorkDayController');
    Route::resource('workPackage', 'WorkPackageController');

    Route::get('/contract/detail/{id}', 'ContractController@detail')->name('contract.detail');

    // Datatables
    Route::group(['prefix' => 'data'], function() {
        Route::get('template', 'DatatablesController@fetchTemplateDatas')->name('fetch.template');
        Route::get('account', 'DatatablesController@fetchAccountDatas')->name('fetch.account');
        Route::get('activity', 'DatatablesController@fetchActivityDatas')->name('fetch.activity');
        Route::get('activitylog', 'DatatablesController@fetchActivityLog')->name('fetch.activityLog');
        Route::get('contract', 'DatatablesController@fetchContractIndexDatas')->name('fetch.contract');
        Route::get('contractDetail', 'DatatablesController@fetchContractDetailDatas')->name('fetch.contract.detail');
        Route::get('employee', 'DatatablesController@fetchEmployeeDatas')->name('fetch.employee');
        Route::get('functionary', 'DatatablesController@fetchFunctionaryDatas')->name('fetch.functionary');
        Route::get('location', 'DatatablesController@fetchLocationDatas')->name('fetch.location');
        Route::get('occupation', 'DatatablesController@fetchOccupationDatas')->name('fetch.occupation');
        Route::get('program', 'DatatablesController@fetchProgramDatas')->name('fetch.program');
        Route::get('position', 'DatatablesController@fetchPositionDatas')->name('fetch.position');
        Route::get('positionCategory', 'DatatablesController@fetchPositionCategoryDatas')->name('fetch.positionCategory');
        Route::get('salaryComponent', 'DatatablesController@fetchSalaryComponentDatas')->name('fetch.salaryComponent');
        Route::get('skpd', 'DatatablesController@fetchSkpdDatas')->name('fetch.skpd');
        Route::get('workDay', 'DatatablesController@fetchWorkDayDatas')->name('fetch.workDay');
        Route::get('workPackage', 'DatatablesController@fetchWorkPackageDatas')->name('fetch.workPackage');
    });

    //Chart
    Route::group(['prefix' => 'chart'], function() {
        Route::get('religion', 'EmployeeController@chartReligion')->name('chart.religion');
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
