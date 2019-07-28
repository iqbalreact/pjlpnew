@extends('adminlte::page')

@section('title', 'Buat Kegiatan Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>Program - Kegiatan</h1>

    {{ Breadcrumbs::render('program_new', $program) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Kegiatan Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('activity.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.activity.form', ['edit' => false])        
    </form>
</div>
@stop