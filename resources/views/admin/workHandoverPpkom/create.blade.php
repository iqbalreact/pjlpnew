@extends('adminlte::page')

@section('title', 'Surat Serah Terima Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Serah Terima PPKOM ke PA</h1>
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('workHandoverPpkom.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.workHandoverPpkom.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop