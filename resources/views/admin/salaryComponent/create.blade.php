@extends('adminlte::page')

@section('title', 'Buat SKPD | '.env('APP_NAME'))

@section('content_header')
    <h1>Komponen Gaji</h1>

    {{ Breadcrumbs::render('salaryComponent_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('salaryComponent.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.salaryComponent.form', ['edit' => false])        
    </form>
</div>
@stop