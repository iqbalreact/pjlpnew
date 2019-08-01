@extends('adminlte::page')

@section('title', 'Jabatan Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Jabatan</h1>

    {{ Breadcrumbs::render('position_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('occupation.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.occupation.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop