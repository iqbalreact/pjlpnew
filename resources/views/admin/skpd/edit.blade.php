@extends('adminlte::page')

@section('title', 'Edit SKPD | '.env('APP_NAME'))

@section('content_header')
    <h1>SKPD</h1>

    {{ Breadcrumbs::render('skpd_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('skpd.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.skpd.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop