@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1>Pegawai Kontrak</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <a href="{{ route('employee.create') }}" class="btn btn-primary">Tambah</a>
@stop