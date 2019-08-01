<div class="box-body">

    @if(isset($program))
        <div class="form-group {{ $errors->has('program_id') ? 'has-error' : '' }}"">
            <label for="inputProgram" class="col-sm-2 control-label">Kegiatan</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $program->name }}" class="form-control" readonly>
                <input name="program_id" type="hidden" value="{{ $program->id }}">

                @if ($errors->has('program_id'))
                    <span class="help-block">{{ $errors->first('program_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('program_id') ? 'has-error' : '' }}">
            <label for="inputProgram" class="col-sm-2 control-label">Program @include('components.required')</label>

            <div class="col-sm-10">
                <select name="program_id" id="programSelect" class="form-control"></select>
                
                @if ($errors->has('program_id'))
                    <span class="help-block">{{ $errors->first('program_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    <div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
        <label for="inputCode" class="col-sm-2 control-label">Kode @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('code', $edit ? $data->code : old('code'), ['class' => 'form-control', 'placeholder'=> __('Kode kegiatan')] ) !!}
            
            @if ($errors->has('code'))
                <span class="help-block">{{ $errors->first('code') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama kegiatan')] ) !!}
            
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
            $("#programSelect").select2({
                dropdownAutoWidth : true,
                width: '100%',
                placeholder: "Pilih Program",
                ajax: {
                    url: "{{ route('select.program') }}",
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
@endsection