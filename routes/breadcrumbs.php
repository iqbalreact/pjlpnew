<?php

// Home
Breadcrumbs::for('dashboard', function ($trail) {
    $trail->push('Dashboard', route('dashboard'));
});

// Home > Employee
Breadcrumbs::for('employee', function ($trail) {
    $trail->parent('dashboard');
    $trail->push('Pegawai Kontrak', route('employee.index'));
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
    $trail->push($skpd->name);
});