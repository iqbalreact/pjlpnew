@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1>Pegawai Kontrak</h1>

    {{ Breadcrumbs::render('employee_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('employee.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.employee.form', ['edit' => false])        
    </form>
</div>
@stop