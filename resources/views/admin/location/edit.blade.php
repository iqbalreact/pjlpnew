@extends('adminlte::page')

@section('title', 'Edit Paket Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Lokasi - update</h1>

    {{ Breadcrumbs::render('location_edit', $data) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit Paket Perkerjaan</h3>
    </div>

    {!! Form::open([ 'url' => route('location.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.location.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop