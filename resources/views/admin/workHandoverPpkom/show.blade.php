@extends('adminlte::page')

@section('title', 'Detail Surat Serah Terima | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Surat Serah Terima PPKOM ke PA</h1>
@stop

@section('content')
     <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.workHandoverPpkom.show.about')
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop