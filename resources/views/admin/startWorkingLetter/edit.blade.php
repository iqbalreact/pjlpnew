@extends('adminlte::page')

@section('title', 'Surat Perintah Mulai Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Perintah Mulai Kerja</h1>

    {{-- {{ Breadcrumbs::render('workDay_edit', $data) }} --}}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('startWorkingLetter.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.startWorkingLetter.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop