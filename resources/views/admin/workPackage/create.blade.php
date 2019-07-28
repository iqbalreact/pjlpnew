@extends('adminlte::page')

@section('title', 'Buat Paket Pekerjaan Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Kegiatan - Paket Pekerjaan</h1>

    {{ Breadcrumbs::render('program_new', $activity) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Paket Pekerjaan Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('workPackage.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.workPackage.form', ['edit' => false])        
    </form>
</div>
@stop