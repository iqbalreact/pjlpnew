@extends('adminlte::page')

@section('title', 'Laporan Pembayaran | '.env('APP_NAME'))

@section('content_header')
    <h1>Laporan Pembayaran</h1>

    {{ Breadcrumbs::render('report_workInspection') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Laporan Pembayaran</h3>
    </div>

    <div class="box-body">
        <a href="{{ route('report.payment') }}" class="btn btn-primary">Download</a>
    </div>
</div>
@stop