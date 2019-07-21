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
    