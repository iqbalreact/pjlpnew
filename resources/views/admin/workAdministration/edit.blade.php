@extends('adminlte::page')

@section('title', 'Berita Acara Hasil Pemeriksaan Administrasi  | '.env('APP_NAME'))

@section('content_header')
    <h1>Berita Acara Hasil Pemeriksaan Administrasi </h1>
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('workAdministration.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.workAdministration.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop