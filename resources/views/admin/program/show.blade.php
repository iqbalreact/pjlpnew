@extends('adminlte::page')

@section('title', 'Detail Program | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Program</h1>

    {{ Breadcrumbs::render('program_show', $data) }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    <li><a href="#log" data-toggle="tab" aria-expanded="true">Change Log</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.program.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\Program'])
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Kegiatan</h3>
                    <a href="{{ route('activity.create', ['program_id' => $data->id]) }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>                    
                </div>
                <div class="box-body">
                    @include('admin.program.show.activity', ['program_id' => $data->id])
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop