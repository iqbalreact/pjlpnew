@extends('adminlte::page')

@section('title', 'Edit Posisi | '.env('APP_NAME'))

@section('content_header')
    <h1>Posisi</h1>

    {{ Breadcrumbs::render('positionCategory_edit', $data) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('position.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.position.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop