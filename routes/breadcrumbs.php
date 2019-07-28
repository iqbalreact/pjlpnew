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

 // Home > SKPD > Program > Create
 Breadcrumbs::for('program_new', function ($trail, $skpd) {
    $trail->parent('skpd_show', $skpd);
    $trail->push('Program');
    $trail->push('Tambah');
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