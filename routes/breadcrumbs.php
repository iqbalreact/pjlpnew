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