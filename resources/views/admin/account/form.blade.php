<div class="box-body">
    <div class="form-group {{ $errors->has('nik') ? 'has-error' : '' }}">
        <label for="inputNIK" class="col-sm-2 control-label">NIK @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('nik', $edit ? $data->nik : old('name'), ['class' => 'form-control', 'placeholder'=> __('NIK')] ) !!}
            
            @if ($errors->has('nik'))
                <span class="help-block">{{ $errors->first('nik') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama pengguna')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Email</label>

        <div class="col-sm-10">
            {!! Form::email('email', $edit ? $data->email : old('email'), ['class' => 'form-control', 'placeholder'=> __('Email pengguna')] ) !!}
            
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

    <div class="form-group {{ $errors->has('role') ? 'has-error' : '' }}">
            <label for="inputEmail" class="col-sm-2 control-label">Role @include('components.required')</label>
    
            <div class="col-sm-10">
                {!! Form::select('role', $roles, $edit ? $data->rolename : old('role') ,['class' => 'form-control'])!!}

                @if ($errors->has('role'))
                    <span class="help-block">{{ $errors->first('role') }}</span>
                @endif
            </div>
        </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button 
                type="submit" 
                class="btn btn-primary">
                    {{ $edit ? 'Update' : 'Simpan' }}
            </button>
            
            <a href="{{ route('account.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>
    