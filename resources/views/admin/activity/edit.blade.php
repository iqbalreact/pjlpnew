@extends('adminlte::page')

@section('title', 'Edit Kegiatan | '.env('APP_NAME'))

@section('content_header')
    <h1>Program - Kegiatan</h1>

    {{ Breadcrumbs::render('activity_edit', $data) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit Program</h3>
    </div>

    {!! Form::open([ 'url' => route('activity.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.activity.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop