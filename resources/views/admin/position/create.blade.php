@extends('adminlte::page')

@section('title', 'Posisi Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Posisi</h1>

    {{ Breadcrumbs::render('position_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('position.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.position.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop