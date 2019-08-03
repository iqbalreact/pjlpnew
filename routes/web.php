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
    Route::resource('workPackage', 'WorkPackageController');


    // Datatables
    Route::group(['prefix' => 'data'], function() {
        Route::get('account', 'DatatablesController@fetchAccountDatas')->name('fetch.account');
        Route::get('activity', 'DatatablesController@fetchActivityDatas')->name('fetch.activity');
        Route::get('activitylog', 'DatatablesController@fetchActivityLog')->name('fetch.activityLog');
        // Route::get('employee', 'DatatablesController@fetchEmployeeDatas')->name('fetch.employee');
        Route::get('employee', 'DatatablesController@fetchEmployeeDatas')->name('fetch.employee');
        Route::get('functionary', 'DatatablesController@fetchFunctionaryDatas')->name('fetch.functionary');
        Route::get('occupation', 'DatatablesController@fetchOccupationDatas')->name('fetch.occupation');
        Route::get('program', 'DatatablesController@fetchProgramDatas')->name('fetch.program');
        Route::get('position', 'DatatablesController@fetchPositionDatas')->name('fetch.position');
        Route::get('positionCategory', 'DatatablesController@fetchPositionCategoryDatas')->name('fetch.positionCategory');
        Route::get('skpd', 'DatatablesController@fetchSkpdDatas')->name('fetch.skpd');
        Route::get('workPackage', 'DatatablesController@fetchWorkPackageDatas')->name('fetch.workPackage');
    });

    // Select2
    Route::group(['prefix' => 'select'], function(){
        Route::get('activity', 'ActivityController@selectList')->name('select.activity');
        Route::get('employee', 'EmployeeController@selectList')->name('select.employee');
        Route::get('functionary', 'FunctionaryController@selectList')->name('select.functionary');
        Route::get('location', 'LocationController@selectList')->name('select.location');
        Route::get('position', 'PositionController@selectList')->name('select.position');
        Route::get('program', 'ProgramController@selectList')->name('select.program');
        Route::get('skpd', 'SkpdController@selectList')->name('select.skpd');
        Route::get('workPackage', 'WorkPackageController@selectList')->name('select.workPackage');
    });

    // Route::get('/home', 'HomeController@index')->name('home');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
