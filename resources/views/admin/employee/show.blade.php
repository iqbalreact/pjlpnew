@extends('adminlte::page')

@section('title', 'Detail Pegawai | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Pegawai Kontrak</h1>

    {{ Breadcrumbs::render('employee_show', $data) }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="{{ $data->getAvatar() }}" alt="User profile picture">
        
                    <h3 class="profile-username text-center">{{ $data->name }}</h3>
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>NIK</b> <a class="pull-right">{{ $data->nik }}</a>
                        </li>
                        <li class="list-group-item">
                            <b>KTP</b> <a class="pull-right">{{ $data->ktp }}</a>
                        </li>
                        <li class="list-group-item">
                            <b>NPWP</b> <a class="pull-right">{{ $data->npwp ?? '-' }}</a>
                        </li>
                    </ul>

                    <a href="{{ route('employee.edit', ['id' => $data->id ]) }}" class="btn btn-success btn-block"><i class="fa fa-pencil"></i> <b>Edit</b></a>
    
                    </div>
            </div>
        </div>

        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    <li class=""><a href="#timeline" data-toggle="tab" aria-expanded="false">Timeline</a></li>
                    <li class=""><a href="#settings" data-toggle="tab" aria-expanded="false">Settings</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.employee.show.about')
                    </div>
                    <div class="tab-pane" id="timeline">
                        
                    </div>
        
                    <div class="tab-pane" id="settings">
                        
                    </div>
                </div>
            </div>
            </div>
    </div>
@stop

@section('js')
@stop