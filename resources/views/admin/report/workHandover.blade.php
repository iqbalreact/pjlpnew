@extends('adminlte::page')

@section('title', 'Laporan Pemeriksaan Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Laporan Berita Acara</h1>

    {{ Breadcrumbs::render('report_workInspection') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Berita Acara</h3>
    </div>

    <div class="box-body">
        <a href="{{ route('report.workHandover') }}" class="btn btn-primary">Download</a>
    </div>
</div>
@stop