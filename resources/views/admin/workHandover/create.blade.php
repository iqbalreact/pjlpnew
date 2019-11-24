@extends('adminlte::page')

@section('title', 'Surat Serah Terima Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Serah Terima</h1>

    {{ Breadcrumbs::render('workDay_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('workHandover.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.workHandover.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop