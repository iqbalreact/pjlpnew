<div class="box-body">
    <div class="form-group {{ $errors->has('nip') ? 'has-error' : '' }}">
        <label for="inputNIP" class="col-sm-2 control-label">NIP @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('nip', $edit ? $data->nip : old('nip'), ['class' => 'form-control', 'placeholder'=> __('NIP')] ) !!}
            
            @if ($errors->has('nip'))
                <span class="help-block">{{ $errors->first('nip') }}</span>
            @endif
        </div>
        
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama Pejabat')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('phone_number') ? 'has-error' : '' }}">
        <label for="inputPhoneNumber" class="col-sm-2 control-label">No Telepon</label>

        <div class="col-sm-10">
            {!! Form::text('phone_number', $edit ? $data->phone_number : old('phone_number'), ['class' => 'form-control', 'placeholder'=> __('No Telepon')] ) !!}
            @if ($errors->has('phone_number'))
                <span class="help-block">{{ $errors->first('phone_number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
        <label for="inputAddress" class="col-sm-2 control-label">Address</label>

        <div class="col-sm-10">
            {!! Form::textarea('address', $edit ? $data->address : old('address'), ['class' => 'form-control', 'placeholder'=> __('Alamat'), 'rows' => 3] ) !!}
            @if ($errors->has('address'))
                <span class="help-block">{{ $errors->first('address') }}</span>
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
            
            <a href="{{ route('functionary.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>
