@extends('adminlte::page')

@section('title', 'Buat Pengguna Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Pengguna</h1>

    {{ Breadcrumbs::render('account_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('account.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.account.form', ['edit' => false])        
    </form>
</div>
@stop