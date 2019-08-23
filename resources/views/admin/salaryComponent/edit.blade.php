@extends('adminlte::page')

@section('title', 'Edit Komponen Gaji | '.env('APP_NAME'))

@section('content_header')
    <h1>Komponen Gaji</h1>

    {{ Breadcrumbs::render('salaryComponent_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('salaryComponent.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.salaryComponent.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop