@extends('adminlte::page')

@section('title', 'Berita Acara Pemeriksaan Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Berita Acara Pemeriksaan Pekerjaan</h1>

    {{-- {{ Breadcrumbs::render('workDay_new') }} --}}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('workInspection.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.workInspection.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop