@extends('adminlte::page')

@section('title', 'Detail Kontrak | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Kontrak</h1>

    {{ Breadcrumbs::render('contract_show') }}
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
                        @include('admin.contract.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\Contract'])
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop