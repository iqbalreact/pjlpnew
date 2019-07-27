<div class="box-body">
    <div class="form-group {{ $errors->has('number') ? 'has-error' : '' }}">
        <label for="inputNumber" class="col-sm-2 control-label">Nomer @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('number', $edit ? $data->number : old('number'), ['class' => 'form-control', 'placeholder'=> __('Nomer')] ) !!}
            
            @if ($errors->has('number'))
                <span class="help-block">{{ $errors->first('number') }}</span>
            @endif
        </div>
        
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama SKPD')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
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

    <div class="form-group {{ $errors->has('phone_number') ? 'has-error' : '' }}">
        <label for="inputPhoneNumber" class="col-sm-2 control-label">No Telepon</label>

        <div class="col-sm-10">
            {!! Form::text('phone_number', $edit ? $data->phone_number : old('phone_number'), ['class' => 'form-control', 'placeholder'=> __('No Telepon')] ) !!}
            @if ($errors->has('phone_number'))
                <span class="help-block">{{ $errors->first('phone_number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('fax') ? 'has-error' : '' }}">
        <label for="inputFax" class="col-sm-2 control-label">Fax</label>

        <div class="col-sm-10">
            {!! Form::text('fax', $edit ? $data->fax : old('fax'), ['class' => 'form-control', 'placeholder'=> __('Fax')] ) !!}
            @if ($errors->has('fax'))
                <span class="help-block">{{ $errors->first('fax') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('post_code') ? 'has-error' : '' }}">
        <label for="inputPostCode" class="col-sm-2 control-label">Kode Pos</label>

        <div class="col-sm-10">
            {!! Form::number('post_code', $edit ? $data->post_code : old('post_code'), ['class' => 'form-control', 'placeholder'=> __('Kode Post')] ) !!}
            @if ($errors->has('post_code'))
                <span class="help-block">{{ $errors->first('post_code') }}</span>
            @endif
        </div>
    </div>

    
    <div class="form-group {{ $errors->has('website') ? 'has-error' : '' }}">
        <label for="inputWebsite" class="col-sm-2 control-label">Website</label>

        <div class="col-sm-10">
            {!! Form::text('website', $edit ? $data->website : old('website'), ['class' => 'form-control', 'placeholder'=> __('Website')] ) !!}
            
            @if ($errors->has('website'))
                <span class="help-block">{{ $errors->first('website') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Email</label>

        <div class="col-sm-10">
            {!! Form::text('email', $edit ? $data->email : old('email'), ['class' => 'form-control', 'placeholder'=> __('Email')] ) !!}
            
            @if ($errors->has('email'))
                <span class="help-block">{{ $errors->first('email') }}</span>
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
            
            <a href="{{ route('skpd.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>
    