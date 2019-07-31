@extends('adminlte::page')

@section('title', 'Edit Kategori Posisi | '.env('APP_NAME'))

@section('content_header')
    <h1>Kategori Posisi</h1>

    {{ Breadcrumbs::render('positionCategory_edit', $data) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Edit</h3>
    </div>

    {!! Form::open([ 'url' => route('positionCategory.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.positionCategory.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop