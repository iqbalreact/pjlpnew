@extends('adminlte::page')

@section('title', 'Detail Surat Serah Terima | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Surat Serah Terima</h1>

    {{-- {{ Breadcrumbs::render('workDay_show', $data) }} --}}
@stop

@section('content')
     <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    {{-- <li><a href="#log" data-toggle="tab" aria-expanded="true">Change Log</a></li> --}}
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.workHandover.show.about')
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop