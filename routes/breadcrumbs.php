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


// // Home > About
// Breadcrumbs::for('about', function ($trail) {
//     $trail->parent('home');
//     $trail->push('About', route('about'));
// });