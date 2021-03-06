@extends('adminlte::page')

@section('title', 'Detail Pejabat | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Pejabat</h1>

    {{ Breadcrumbs::render('functionary_show', $data) }}
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
                            <b>NIP</b> <a class="pull-right">{{ $data->nip }}</a>
                        </li>
                    </ul>

                    <a href="{{ route('functionary.edit', ['id' => $data->id ]) }}" class="btn btn-success btn-block"><i class="fa fa-pencil"></i> <b>Edit</b></a>
    
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
                        @include('admin.functionary.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\Functionary'])
                    </div>
                </div>
            </div>
            </div>
    </div>
@stop

@section('js')
@stop