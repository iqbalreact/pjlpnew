@extends('adminlte::page')

@section('title', 'Detail Cuti | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Cut</h1>

    {{ Breadcrumbs::render('leave_show', $data) }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    <li class=""><a href="#log" data-toggle="tab" aria-expanded="false">Change Log</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.leave.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\HistoryLeaveEmployee'])
                    </div>
                </div>
            </div>
            </div>
    </div>
@stop

@section('js')
@stop