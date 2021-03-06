@extends('adminlte::page')

@section('title', 'Detail PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail PJLP</h1>

    {{ Breadcrumbs::render('employee_show', $data) }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="{{ $data->getAvatar() }}" alt="User profile picture">
        
                    <br>
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Nama</b> <a class="pull-right">{{ $data->name }}</a>
                        </li>
                        <li class="list-group-item">
                            <b>NIPJ</b> <a class="pull-right">{{ $data->nipj }}</a>
                        </li>
                        <li class="list-group-item">
                            <b>No Telepon</b> <a class="pull-right">{{ $data->phone_number }}</a>
                        </li>
                        <li class="list-group-item">
                            <b>Status</b> <a class="pull-right">{{ $contract ? 'Aktif' : 'Non Aktif' }}</a>
                        </li>
                    </ul>

                    <a href="{{ route('employee.edit', ['id' => $data->id ]) }}" class="btn btn-success btn-block"><i class="fa fa-pencil"></i> <b>Edit</b></a>

                    @if(!$contract)
                        <a href="{{ route('contract.create', ['employee_id' => $data->id ]) }}" class="btn btn-primary btn-block"><i class="fa fa-plus"></i> <b>Tambah Kontrak</b></a>
                    @endif

                    </div>
            </div>
        </div>

        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    <li class=""><a href="#log" data-toggle="tab" aria-expanded="false">Change Log</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.employee.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\Employee'])
                    </div>
                </div>
            </div>
            </div>
    </div>
@stop

@section('js')
@stop