@extends('adminlte::page')

@section('title', 'Berita Acara Hasil Pemeriksaan Administrasi | '.env('APP_NAME'))

@section('content_header')
    <h1>Berita Acara Hasil Pemeriksaan Administrasi</h1>

@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('workAdministration.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.workAdministration.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop