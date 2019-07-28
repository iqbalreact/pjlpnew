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

    Route::resource('account', 'AccountController');
    Route::resource('employee', 'EmployeeController');
    Route::resource('log', 'LogController')->only('index', 'show');
    Route::resource('program', 'ProgramController');
    Route::resource('skpd', 'SkpdController');


    // Datatables
    Route::group(['prefix' => 'data'], function() {
        Route::get('account', 'DatatablesController@fetchAccountDatas')->name('fetch.account');
        Route::get('activity', 'DatatablesController@fetchActivityLog')->name('fetch.activity');
        Route::get('employee', 'DatatablesController@fetchEmployeeDatas')->name('fetch.employee');
        Route::get('program', 'DatatablesController@fetchProgramDatas')->name('fetch.program');
        Route::get('skpd', 'DatatablesController@fetchSkpdDatas')->name('fetch.skpd');
    });

    // Select2
    Route::group(['prefix' => 'select'], function(){
        Route::get('skpd', 'SkpdController@selectList')->name('select.skpd');
    });

    // Route::get('/home', 'HomeController@index')->name('home');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
