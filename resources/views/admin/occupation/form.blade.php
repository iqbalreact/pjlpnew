<div class="box-body">
    <div class="form-group {{ $errors->has('functionary_id') ? 'has-error' : '' }}">
        <label for="inputFunctionaryId" class="col-sm-2 control-label">Pejabat @include('components.required')</label>

        <div class="col-sm-10">
            <select name="functionary_id" id="functionarySelect" class="form-control"></select>
            
            @if ($errors->has('functionary_id'))
                <span class="help-block">{{ $errors->first('functionary_id') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
            <label for="inputEmail" class="col-sm-2 control-label">SKPD @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="skpd_id" id="skpdSelect" class="form-control"></select>
                
                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>

    <div class="form-group {{ $errors->has('start_date') ? 'has-error' : '' }}">
        <label for="inputStartDate" class="col-sm-2 control-label">Tanggal Mulai @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('start_date', $edit ? $data->name : old('start_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal mulai'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('start_date'))
                <span class="help-block">{{ $errors->first('start_date') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('end_date') ? 'has-error' : '' }}">
        <label for="inputEndDate" class="col-sm-2 control-label">Tanggal Selesai @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('end_date', $edit ? $data->name : old('start_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal mulai'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('end_date'))
                <span class="help-block">{{ $errors->first('end_date') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('position') ? 'has-error' : '' }}">
        <label for="inputPosition" class="col-sm-2 control-label">Posisi @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('position', $positions, $edit ? $data->position : old('position') ,['class' => 'form-control'])!!}

            @if ($errors->has('position'))
                <span class="help-block">{{ $errors->first('position') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">
        <label for="inputStatus" class="col-sm-2 control-label">Status @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('status', $status, $edit ? $data->status : old('status') ,['class' => 'form-control'])!!}

            @if ($errors->has('status'))
                <span class="help-block">{{ $errors->first('status') }}</span>
            @endif
        </div>
    </div>

    {{-- <div class="form-group {{ $errors->has('position_category_id') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Kategori @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('position_category_id', $categories, $edit ? $data->position_category_id : old('position_category_id') ,['class' => 'form-control'])!!}

            @if ($errors->has('position_category_id'))
                <span class="help-block">{{ $errors->first('position_category_id') }}</span>
            @endif
        </div>
    </div> --}}

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
            format: 'dd-mm-yyyy'
        });

        $("#skpdSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Pilih SKPD",
            ajax: {
                url: "{{ route('select.skpd') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                    };
                },
                processResults: function (data) {

                    var res = data.map(function (item) {
                        return {id: item.id, text: item.name};
                    });
                    
                    return {
                        results: res
                    };
                }
            }
        });

        $("#functionarySelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Pilih Pejabat",
            ajax: {
                url: "{{ route('select.functionary') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                    };
                },
                processResults: function (data) {

                    var res = data.map(function (item) {
                        return {id: item.id, text: item.name};
                    });
                    
                    return {
                        results: res
                    };
                }
            }
        });
    });
</script>
@stop
