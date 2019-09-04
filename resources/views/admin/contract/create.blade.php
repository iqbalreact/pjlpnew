@extends('adminlte::page')

@section('title', 'Buat PJLP Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Kontrak</h1>

    {{ Breadcrumbs::render('contract_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('contract.store') }}" method="POST" enctype="multipart/form-data" id="contractForm">
        @csrf
        @include('admin.contract.form', ['edit' => false])        
    </form>
</div>
@stop