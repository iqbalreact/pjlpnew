@extends('adminlte::page')

@section('title', 'Buat Pengguna Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Pengguna</h1>

    {{ Breadcrumbs::render('account_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    {!! Form::open([ 'url' => route('account.update', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
        @include('admin.account.form', ['edit' => true, 'data' => $data])        
    {!! Form::close() !!}
</div>
@stop