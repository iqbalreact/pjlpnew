<?php

// Home
Breadcrumbs::for('dashboard', function ($trail) {
    $trail->push('Dashboard', route('dashboard'));
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