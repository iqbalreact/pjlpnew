@extends('adminlte::page')

@section('title', 'Update Profile | '.env('APP_NAME'))

@section('content_header')
    <h1>Update Profile</h1>

    {{ Breadcrumbs::render('account_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Update Profile</h3>
    </div>

    <div class="box-body">
        {!! Form::open([ 'url' => route('account.updateProfile.post', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
            <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>
        
                <div class="col-sm-10">
                    {!! Form::text('name', $data->name, ['class' => 'form-control', 'placeholder'=> __('Nama pengguna')] ) !!}
                    
                    @if ($errors->has('name'))
                        <span class="help-block">{{ $errors->first('name') }}</span>
                    @endif
                </div>
            </div>
        
            <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                <label for="inputEmail" class="col-sm-2 control-label">Email @include('components.required')</label>
        
                <div class="col-sm-10">
                    {!! Form::email('email', $data->email, ['class' => 'form-control', 'placeholder'=> __('Email pengguna')] ) !!}
                    
                    @if ($errors->has('email'))
                        <span class="help-block">{{ $errors->first('email') }}</span>
                    @endif
                </div>
            </div>

            <div class="form-group {{ $errors->has('avatar') ? 'has-error' : '' }}">
                <label for="inputAvatar" class="col-sm-2 control-label">Foto</label>
                
                <div class="col-sm-10">
                    {!! Form::file('avatar', ['class' => 'form-control', 'id' => 'avatar'] ) !!}
                    @if ($errors->has('avatar'))
                        <span class="help-block">{{ $errors->first('avatar') }}</span>
                    @endif
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button 
                        type="submit" 
                        class="btn btn-primary">
                            {{ 'Update' }}
                    </button>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
</div>
@stop