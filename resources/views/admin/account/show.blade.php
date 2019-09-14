@extends('adminlte::page')

@section('title', 'Detail Pengguna | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Pengguna</h1>

    {{ Breadcrumbs::render('account_show', $data) }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-3">
            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="{{ $data->getAvatar() }}" alt="User profile picture">
        
                    <h3 class="profile-username text-center">{{ $data->name }}</h3>
                    
                    <p class="text-muted text-center">{{ $data->rolenametransform}}</p>
                    
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>NIP</b> <a class="pull-right">{{ $data->nip }}</a>
                        </li>
                    </ul>

                    @if(\Auth::user()->id == $data->id and $data->rolenametransform !== 'Superadmin')
                        <a href="{{ route('account.updateProfile', ['id' => $data->id ]) }}" class="btn btn-success btn-block"><i class="fa fa-pencil"></i> <b>Edit</b></a>
                    @else
                        <a href="{{ route('account.edit', ['id' => $data->id ]) }}" class="btn btn-success btn-block"><i class="fa fa-pencil"></i> <b>Edit</b></a>
                    @endif

                    @if(\Auth::user()->id == $data->id)
                        <a href="{{ route('account.updatePassword', ['id' => $data->id ]) }}" class="btn btn-primary btn-block"><i class="fa fa-key"></i> <b>Update Password</b></a>
                    @endif

                    </div>
            </div>
        </div>

        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    <li class=""><a href="#log" data-toggle="tab" aria-expanded="false">Log</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.account.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        @include('admin.partials.userActivityLog', ['causer_id' => $data->id, 'models' => ''])
                    </div>
                </div>
            </div>
            </div>
    </div>
@stop

@section('js')
@stop