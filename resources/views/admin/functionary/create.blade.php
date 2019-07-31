@extends('adminlte::page')

@section('title', 'Buat Pejabat Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Pejabat</h1>

    {{ Breadcrumbs::render('functionary_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('functionary.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.functionary.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop