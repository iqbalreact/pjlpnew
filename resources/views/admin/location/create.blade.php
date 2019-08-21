@extends('adminlte::page')

@section('title', 'Buat Lokasi Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Lokasi - Tambah</h1>

    {{ Breadcrumbs::render('location_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Lokasi Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('location.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.location.form', ['edit' => false])        
    </form>
</div>
@stop