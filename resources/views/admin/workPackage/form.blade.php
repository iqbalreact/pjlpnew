<div class="box-body">
    <div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
        <label for="inputCode" class="col-sm-2 control-label">Code @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('code', $edit ? $data->code : old('code'), ['class' => 'form-control', 'placeholder'=> __('Kode paket pekerjaan')] ) !!}
            
            @if ($errors->has('code'))
                <span class="help-block">{{ $errors->first('code') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama paket pekerjaan')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    @if(isset($activity))
        <div class="form-group {{ $errors->has('activity_id') ? 'has-error' : '' }}"">
            <label for="inputActivity" class="col-sm-2 control-label">Kegiatan</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $activity->name }}" class="form-control" readonly>
                <input name="activity_id" type="hidden" value="{{ $activity->id }}">

                @if ($errors->has('activity_id'))
                    <span class="help-block">{{ $errors->first('activity_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('activity_id') ? 'has-error' : '' }}">
            <label for="inputProgram" class="col-sm-2 control-label">Kegiatan @include('components.required')</label>

            <div class="col-sm-10">
                <select name="activity_id" id="activitySelect" class="form-control"></select>
                
                @if ($errors->has('activity_id'))
                    <span class="help-block">{{ $errors->first('activity_id') }}</span>
                @endif
            </div>
        </div>
    @endif


   

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
            $("#activitySelect").select2({
                dropdownAutoWidth : true,
                width: '100%',
                placeholder: "Pilih Paket Pekerjaan",
                ajax: {
                    url: "{{ route('select.activity') }}",
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