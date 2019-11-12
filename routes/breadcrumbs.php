<?php

// Home
Breadcrumbs::for('dashboard', function ($trail) {
    $trail->push('Dashboard', route('dashboard'));
});

/**
 * Assessment ====================================================================
 */

// Home > Attendace
Breadcrumbs::for('assessment', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Penilaian', route('assessment.index'));
});


/**
 * Attendance ====================================================================
 */

// Home > Attendace
Breadcrumbs::for('attendace', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Absensi', route('attendance.index'));
});

/**
 * Contract ====================================================================
 */

// Home > Contract
Breadcrumbs::for('contract', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Kontrak', route('contract.index'));
});

// Home > Contract > New
Breadcrumbs::for('contract_new', function ($trail) {
    $trail->parent('contract');
    $trail->push('Tambah');
});

// Home > Contract > Edit
Breadcrumbs::for('contract_edit', function ($trail) {
    $trail->parent('contract');
    $trail->push('Edit');
});

// Home > Contract > Show
Breadcrumbs::for('contract_show', function ($trail) {
    $trail->parent('contract');
    $trail->push('Detail');
});

/**
 * Employee ====================================================================
 */

// Home > Employee
Breadcrumbs::for('employee', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('PJLP', route('employee.index'));
});

// Home > Employee > New
Breadcrumbs::for('employee_new', function ($trail) {
    $trail->parent('employee');
    $trail->push('Tambah');
});

// Home > Employee > Edit
Breadcrumbs::for('employee_edit', function ($trail) {
    $trail->parent('employee');
    $trail->push('Edit');
});

// Home > Employee > Show
Breadcrumbs::for('employee_show', function ($trail, $employee) {
    $trail->parent('employee');
    $trail->push($employee->name);
});

/**
 * Functionary ====================================================================
 */

// Home > Functionary
Breadcrumbs::for('functionary', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Pejabat', route('functionary.index'));
});

// Home > Functionary > New
Breadcrumbs::for('functionary_new', function ($trail) {
    $trail->parent('functionary');
    $trail->push('Tambah');
});

// Home > Functionary > Edit
Breadcrumbs::for('functionary_edit', function ($trail) {
    $trail->parent('functionary');
    $trail->push('Edit');
});

// Home > Functionary > Show
Breadcrumbs::for('functionary_show', function ($trail, $functionary) {
    $trail->parent('functionary');
    $trail->push($functionary->name);
});

/**
 * Leave ====================================================================
 */

// Home > Leave
Breadcrumbs::for('leave', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Cuti', route('leaveEmployee.index'));
});

// Home > Leave > New
Breadcrumbs::for('leave_new', function ($trail) {
    $trail->parent('leave');
    $trail->push('Tambah');
});

// Home > Leave > Edit
Breadcrumbs::for('leave_edit', function ($trail) {
    $trail->parent('leave');
    $trail->push('Edit');
});

// Home > Leave > Show
Breadcrumbs::for('leave_show', function ($trail) {
    $trail->parent('leave');
    $trail->push('detail');
});

/**
 * Location ====================================================================
 */

// Home > Location
Breadcrumbs::for('location', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Lokasi', route('location.index'));
});

// Home > Location > New
Breadcrumbs::for('location_new', function ($trail) {
    $trail->parent('location');
    $trail->push('Tambah');
});

// Home > Location > Edit
Breadcrumbs::for('location_edit', function ($trail) {
    $trail->parent('location');
    $trail->push('Edit');
});

// Home > Location > Show
Breadcrumbs::for('location_show', function ($trail, $location) {
    $trail->parent('location');
    $trail->push($location->name);
});

/**
 * Occupation =======================================================================
 * 
 */

 // Home > Occupation
 Breadcrumbs::for('occupation', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Jabatan', route('occupation.index'));
});

 // Home > Occupation > Create
 Breadcrumbs::for('occupation_new', function ($trail) {
    $trail->parent('occupation');
    $trail->push('Tambah');
 });

 // Home > Occupation > Edit
 Breadcrumbs::for('occupation_edit', function ($trail) {
    $trail->parent('occupation');
    $trail->push('Edit');
 });

 // Home > Occupation > show
 Breadcrumbs::for('occupation_show', function ($trail) {
    $trail->parent('occupation');
    $trail->push('Detail');
});

/**
 * Program =======================================================================
 * 
 */

 // Home > Program
 Breadcrumbs::for('program', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Program', route('program.index'));
});

 // Home > Program > Create
 Breadcrumbs::for('program_new', function ($trail) {
    $trail->parent('program');
    $trail->push('Tambah');
 });

 // Home > Program > Edit
 Breadcrumbs::for('program_edit', function ($trail, $program) {
    $trail->parent('program');
    $trail->push($program->name, route('program.show', ['id' => $program->id]));
    $trail->push('Edit');
 });

 // Home > Program > show
 Breadcrumbs::for('program_show', function ($trail, $program) {
    $trail->parent('program');
    $trail->push($program->name, route('program.show', ['id' => $program->id]));
 });

/**
 * Position =======================================================================
 * 
 */

 // Home > Position
 Breadcrumbs::for('position', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Posisi', route('position.index'));
});

 // Home > Position > Create
 Breadcrumbs::for('position_new', function ($trail) {
    $trail->parent('position');
    $trail->push('Tambah');
 });

 // Home > Position > Edit
 Breadcrumbs::for('position_edit', function ($trail, $position) {
    $trail->parent('position');
    $trail->push($position->name, route('position.show', ['id' => $position->id]));
    $trail->push('Edit');
 });

 // Home > Position > show
 Breadcrumbs::for('position_show', function ($trail, $position) {
    $trail->parent('position');
    $trail->push($position->name);
 });

 /**
 * Report =======================================================================
 * 
 */

 // Home > Report
 Breadcrumbs::for('report_workInspection', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Laporan');
    $trail->push('Pemeriksaan Pekerjaan');
});

 /**
 * Position Category =======================================================================
 * 
 */

 // Home > Position Category
 Breadcrumbs::for('positionCategory', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Kategori Posisi', route('positionCategory.index'));
});

 // Home > Position Category > Create
 Breadcrumbs::for('positionCategory_new', function ($trail) {
    $trail->parent('positionCategory');
    $trail->push('Tambah');
 });

 // Home > Position Category > Edit
 Breadcrumbs::for('positionCategory_edit', function ($trail, $program) {
    $trail->parent('positionCategory');
    $trail->push($program->name, route('program.show', ['id' => $program->id]));
    $trail->push('Edit');
 });

 // Home > Position Category > show
 Breadcrumbs::for('positionCategory_show', function ($trail, $positionCategory) {
    $trail->parent('positionCategory');
    $trail->push($positionCategory->name);
 });

/**
 * Activity =======================================================================
 * 
 */

// Home > Activity
Breadcrumbs::for('activity', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Kegiatan', route('activity.index'));
});

 // Home > Activity > Create
 Breadcrumbs::for('activity_new', function ($trail) {
    $trail->parent('activity');
    $trail->push('Tambah');
 });

 // Home > Activity > Edit
 Breadcrumbs::for('activity_edit', function ($trail, $activity) {
    $trail->parent('activity');
    $trail->push($activity->name, route('activity.show', ['id' => $activity->id]));
    $trail->push('Edit');
 });

 // Home > Activity > show
 Breadcrumbs::for('activity_show', function ($trail, $activity) {
    $trail->parent('activity');
    $trail->push($activity->name, route('activity.show', ['id' => $activity->id]));
 });

 /**
 * Payroll ====================================================================
 */

// Home > payroll
Breadcrumbs::for('payroll', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Penggajian', route('payroll.index'));
});

// Home > payroll > Detail
Breadcrumbs::for('payroll_show', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Penggajian', route('payroll.index'));
    $trail->push('Detail');
});

/**
 * Work Day =======================================================================
 * 
 */

// Home > Work Day
Breadcrumbs::for('workDay', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Hari Kerja', route('workDay.index'));
});

// Home > Work Day > Create
Breadcrumbs::for('workDay_new', function ($trail) {
    $trail->parent('workDay');
    $trail->push('Tambah');
});

// Home > Work Day > Edit
Breadcrumbs::for('workDay_edit', function ($trail, $workDay) {
    $trail->parent('workDay');
    $trail->push($workDay->year, route('workDay.show', ['id' => $workDay->id]));
    $trail->push('Edit');
});

// Home > Work Day > show
Breadcrumbs::for('workDay_show', function ($trail, $workDay) {
    $trail->parent('workDay');
    $trail->push($workDay->year, route('workDay.show', ['id' => $workDay->id]));
});

 /**
 * Work Package =======================================================================
 * 
 */

// Home > Work Package
Breadcrumbs::for('workPackage', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Paket Pekerjaan', route('workPackage.index'));
});

// Home > Work Package > Create
Breadcrumbs::for('workPackage_new', function ($trail) {
    $trail->parent('workPackage');
    $trail->push('Tambah');
});

// Home > Work Package > Edit
Breadcrumbs::for('workPackage_edit', function ($trail, $workPackage) {
    $trail->parent('workPackage');
    $trail->push($workPackage->name, route('workPackage.show', ['id' => $workPackage->id]));
    $trail->push('Edit');
});

// Home > Work Package > show
Breadcrumbs::for('workPackage_show', function ($trail, $workPackage) {
    $trail->parent('workPackage');
    $trail->push($workPackage->name, route('workPackage.show', ['id' => $workPackage->id]));
});
 

/**
 * Account ========================================================================
 */

// Home > Account
Breadcrumbs::for('account', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Pengguna', route('account.index'));
});

// Home > Account > New
Breadcrumbs::for('account_new', function ($trail) {
    $trail->parent('account');
    $trail->push('Tambah');
});

// Home > Account > Edit
Breadcrumbs::for('account_edit', function ($trail) {
    $trail->parent('account');
    $trail->push('Edit');
});

// Home > Account > Show
Breadcrumbs::for('account_show', function ($trail, $account) {
    $trail->parent('account');
    $trail->push($account->name);
});

/**
 * Log ========================================================================
 */

// Home > Log
Breadcrumbs::for('log', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Log', route('log.index'));
});

// Home > Log > Show
Breadcrumbs::for('log_show', function ($trail) {
    $trail->parent('log');
    $trail->push('Detail');
});

/**
 * SKPD ========================================================================
 */

// Home > Salary Component
Breadcrumbs::for('salaryComponent', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Komponen Gaji', route('salaryComponent.index'));
});

// Home > Salary Component > New
Breadcrumbs::for('salaryComponent_new', function ($trail) {
    $trail->parent('salaryComponent');
    $trail->push('Tambah');
});

// Home > Salary Component > Edit
Breadcrumbs::for('salaryComponent_edit', function ($trail) {
    $trail->parent('salaryComponent');
    $trail->push('Edit');
});

// Home > Salary Component > Show
Breadcrumbs::for('salaryComponent_show', function ($trail, $skpd) {
    $trail->parent('salaryComponent');
    $trail->push($skpd->name, route('skpd.show', ['id' => $skpd->id]));
});

/**
 * SKPD ========================================================================
 */

// Home > SKPD
Breadcrumbs::for('skpd', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('SKPD', route('skpd.index'));
});

// Home > SKPD > New
Breadcrumbs::for('skpd_new', function ($trail) {
    $trail->parent('skpd');
    $trail->push('Tambah');
});

// Home > SKPD > Edit
Breadcrumbs::for('skpd_edit', function ($trail) {
    $trail->parent('skpd');
    $trail->push('Edit');
});

// Home > SKPD > Show
Breadcrumbs::for('skpd_show', function ($trail, $skpd) {
    $trail->parent('skpd');
    $trail->push($skpd->name, route('skpd.show', ['id' => $skpd->id]));
});