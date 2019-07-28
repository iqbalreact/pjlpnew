@extends('adminlte::page')

@section('title', 'Buat Program Baru | '.env('APP_NAME'))

@section('content_header')
    <h1>SKPD - Program</h1>

    {{ Breadcrumbs::render('program_new', $skpd) }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Program Baru</h3>
    </div>

    <form class="form-horizontal" action="{{ route('program.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('admin.program.form', ['edit' => false])        
    </form>
</div>
@stop