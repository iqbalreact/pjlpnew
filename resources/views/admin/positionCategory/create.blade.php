@extends('adminlte::page')

@section('title', 'Kategori Posisi Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Kategori Posisi</h1>

    {{ Breadcrumbs::render('positionCategory_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('positionCategory.store'), 'files' => true, 'method' => 'POST', 'class' => 'form-horizontal']) !!}
        @include('admin.positionCategory.form', ['edit' => false])        
    {!! Form::close() !!}
</div>
@stop