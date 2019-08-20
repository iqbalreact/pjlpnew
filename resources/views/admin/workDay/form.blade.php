<div class="box-body">
    
    <div class="form-group {{ $errors->has('year') ? 'has-error' : '' }}">
        <label for="inputStartDate" class="col-sm-2 control-label">Tahun @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('year', $edit ? $data->year : old('year'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tahun'), 'autocomplete' => 'off', 'onkeydown' => "return false", 'required' => true] ) !!}
            
            @if ($errors->has('year'))
                <span class="help-block">{{ $errors->first('year') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('january') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Januari @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('january', $edit ? $data->january : old('january'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('january'))
                <span class="help-block">{{ $errors->first('january') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('february') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Februari @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('february', $edit ? $data->february : old('february'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('february'))
                <span class="help-block">{{ $errors->first('february') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('march') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Maret @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('march', $edit ? $data->march : old('march'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('march'))
                <span class="help-block">{{ $errors->first('march') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('april') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">April @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('april', $edit ? $data->april : old('april'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('april'))
                <span class="help-block">{{ $errors->first('april') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('may') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Mei @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('may', $edit ? $data->may : old('may'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('may'))
                <span class="help-block">{{ $errors->first('may') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('june') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Juni @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('june', $edit ? $data->june : old('june'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('june'))
                <span class="help-block">{{ $errors->first('june') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('july') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Juli @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('july', $edit ? $data->july : old('july'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('july'))
                <span class="help-block">{{ $errors->first('july') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('august') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Agustus @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('august', $edit ? $data->august : old('august'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('august'))
                <span class="help-block">{{ $errors->first('august') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('september') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">September @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('september', $edit ? $data->september : old('september'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('september'))
                <span class="help-block">{{ $errors->first('september') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('october') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Oktober @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('october', $edit ? $data->september : old('september'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('october'))
                <span class="help-block">{{ $errors->first('october') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('november') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">November @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('november', $edit ? $data->november : old('september'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('november'))
                <span class="help-block">{{ $errors->first('november') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('december') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Desember @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::number('december', $edit ? $data->december : old('september'), ['class' => 'form-control', 'placeholder'=> __('Jumlah Hari'), 'required' => true, 'min' => 1, 'max' => 31] ) !!}
            
            @if ($errors->has('december'))
                <span class="help-block">{{ $errors->first('december') }}</span>
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
            
            <a href="{{ URL::previous() }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>

@section('js')
<script>
    $(function() {
        //Date picker
        $('.datepicker').datepicker({
            autoclose: true,
            orientation: 'bottom',
            format: "yyyy",
            viewMode: "years", 
            minViewMode: "years"
        });
    });
</script>
@stop
