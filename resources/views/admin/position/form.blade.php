<div class="box-body">
    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama posisi')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('position_category_id') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Kategori @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('position_category_id', $categories, $edit ? $data->position_category_id : old('position_category_id') ,['class' => 'form-control'])!!}

            @if ($errors->has('position_category_id'))
                <span class="help-block">{{ $errors->first('position_category_id') }}</span>
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
