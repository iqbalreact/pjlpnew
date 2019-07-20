@extends('adminlte::page')

@section('title', 'Detail Pegawai - PJLP Pontianak')

@section('content_header')
    <h1>Pegawai Kontrak</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="{{ $data->getAvatar() }}" alt="User profile picture">
        
                    <h3 class="profile-username text-center">{{ $data->name }}</h3>
    
                    </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop