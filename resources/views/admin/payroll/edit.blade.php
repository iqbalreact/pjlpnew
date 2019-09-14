@extends('adminlte::page')

@section('title', 'Edit PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>PJLP</h1>

    {{ Breadcrumbs::render('employee_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('employee.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.employee.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop