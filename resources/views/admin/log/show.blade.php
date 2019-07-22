@extends('adminlte::page')

@section('title', 'Detail Log | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Log</h1>

    {{ Breadcrumbs::render('log_show') }}
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Log {{ $data->id }}</h3>
                </div>
                <div class="box-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Log Date</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->created_at }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Action</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->description }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Log Name</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->log_name }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Subject</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->subject_type }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Subject Name</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->subject->name ?? '-' }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Causer</label>
                    
                            <div class="col-sm-10">
                                <input class="form-control" value="{{ $data->causer->name ?? '-' }}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Properties</label>
                    
                            <div class="col-sm-10">
                                <code>
                                @foreach(json_decode($data->properties, true) as $key => $value)
                                    {{ $key }}

                                    <ul>
                                        @foreach($value as $key2 => $value2)
                                            <li>{{ $key2 }} : {{ $value2 }}</li> 
                                        @endforeach
                                    </ul>
                                @endforeach
                                </code>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="{{ $data->route }}{{ $data->subject_id }}" class="btn btn-primary">Detail Subject</a>
                            </div>
                        </div>
                    </form>              
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
@stop