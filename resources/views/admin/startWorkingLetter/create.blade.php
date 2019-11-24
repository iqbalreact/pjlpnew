@extends('adminlte::page')

@section('title', 'Surat Perintah Mulai Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Perintah Mulai Kerja</h1>

    {{-- {{ Breadcrumbs::render('workDay_new') }} --}}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('startWorkingLetter.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.startWorkingLetter.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop