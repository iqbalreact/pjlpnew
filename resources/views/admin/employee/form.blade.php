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
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama pegawai')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('ktp') ? 'has-error' : '' }}">
        <label for="inputKTPNumber" class="col-sm-2 control-label">No. KTP @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('ktp', $edit ? $data->ktp : old('ktp'), ['class' => 'form-control', 'placeholder'=> __('No KTP')] ) !!}
            
            @if ($errors->has('ktp'))
                <span class="help-block">{{ $errors->first('ktp') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('npwp') ? 'has-error' : '' }}">
        <label for="inputNPWP" class="col-sm-2 control-label">NPWP</label>

        <div class="col-sm-10">
            {!! Form::text('npwp', $edit ? $data->npwp : old('npwp'), ['class' => 'form-control', 'placeholder'=> __('NPWP')] ) !!}
            @if ($errors->has('npwp'))
                <span class="help-block">{{ $errors->first('npwp') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('account_number') ? 'has-error' : '' }}">
        <label for="inputAccountNumber" class="col-sm-2 control-label">NPWP</label>

        <div class="col-sm-10">
            {!! Form::text('account_number', $edit ? $data->account_number : old('account_number'), ['class' => 'form-control', 'placeholder'=> __('No Rekening')] ) !!}
            @if ($errors->has('account_number'))
                <span class="help-block">{{ $errors->first('account_number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('bpjs_healthcare') ? 'has-error' : '' }}">
        <label for="inputBPJSHealtCare" class="col-sm-2 control-label">BPJS Kesehatan</label>

        <div class="col-sm-10">
            {!! Form::text('bpjs_healthcare', $edit ? $data->bpjs_healthcare : old('bpjs_healthcare'), ['class' => 'form-control', 'placeholder'=> __('No BPJS Kesehatan')] ) !!}
            @if ($errors->has('bpjs_healthcare'))
                <span class="help-block">{{ $errors->first('bpjs_healthcare') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('bpjs_social_security') ? 'has-error' : '' }}">
        <label for="inputBPJSHealtCare" class="col-sm-2 control-label">BPJS Ketenagakerjaan</label>

        <div class="col-sm-10">
            {!! Form::text('bpjs_social_security', $edit ? $data->bpjs_social_security : old('bpjs_social_security'), ['class' => 'form-control', 'placeholder'=> __('No BPJS Ketenagakerjaan')] ) !!}
            @if ($errors->has('bpjs_social_security'))
                <span class="help-block">{{ $errors->first('bpjs_social_security') }}</span>
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
                    {{ $edit ? 'Update' : 'Simpan' }}
            </button>
            
            <a href="{{ route('employee.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>
