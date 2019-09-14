@extends('adminlte::page')

@section('title', 'Update Password | '.env('APP_NAME'))

@section('content_header')
    <h1>Update Password</h1>

    {{ Breadcrumbs::render('account_edit') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Update Password</h3>
    </div>

    <div class="box-body">
        {!! Form::open([ 'url' => route('account.updatePassword.post', ['id' => $data->id ]), 'files' => true, 'method' => 'PUT', 'class' => 'form-horizontal']) !!}
            <div class="form-group {{ $errors->has('password') ? 'has-error' : '' }}">
                <label for="inputName" class="col-sm-2 control-label">Password @include('components.required')</label>
        
                <div class="col-sm-10">
                    {!! Form::password('password', ['class' => 'form-control', 'placeholder'=> __('Password')] ) !!}
                    
                    @if ($errors->has('password'))
                        <span class="help-block">{{ $errors->first('password') }}</span>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Konfirmasi Password @include('components.required')</label>
        
                <div class="col-sm-10">
                    {!! Form::password('password_confirmation', ['class' => 'form-control', 'placeholder'=> __('Konfirmasi password')] ) !!}
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