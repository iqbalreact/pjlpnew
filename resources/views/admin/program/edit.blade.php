@extends('adminlte::page')

@section('title', 'Buat SKPD | '.env('APP_NAME'))

@section('content_header')
    <h1>SKPD - Program</h1>

    {{ Breadcrumbs::render('program_edit', $skpd, $data) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit Program</h3>
    </div>

    {!! Form::open([ 'url' => route('program.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.program.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop