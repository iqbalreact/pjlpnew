<div class="box-body">

    @if(isset($skpd))
        <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}"">
            <label for="inputSKPD" class="col-sm-2 control-label">SKPD</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $skpd->name }}" class="form-control" readonly>
                <input name="skpd_id" type="hidden" value="{{ $skpd->id }}">

                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
            <label for="inputEmail" class="col-sm-2 control-label">SKPD @include('components.required')</label>

            <div class="col-sm-10">
                <select name="skpd_id" id="skpdSelect" class="form-control"></select>
                
                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    <div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
        <label for="inputCode" class="col-sm-2 control-label">Kode @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('code', $edit ? $data->code : old('code'), ['class' => 'form-control', 'placeholder'=> __('Kode program'), 'id' => 'programCode'] ) !!}
            
            @if ($errors->has('code'))
                <span class="help-block">{{ $errors->first('code') }}</span>
            @endif
        </div>
    </div>
    
    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama Program @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama program')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button 
                type="submit" 
                class="btn btn-success">
                    {{ $edit ? 'Update' : 'Buat Program' }}
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
            $("#skpdSelect").select2({
                dropdownAutoWidth : true,
                width: '100%',
                placeholder: "Ketik dan pilih nama SKPD",
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

            @if(isset($skpd))
                getCode("{{ $skpd->id }}");
            @endif
        });

        @if(!$edit)
            $('#skpdSelect').change(function() {
                getCode($('#skpdSelect').val());
            });
        @endif

        function getCode(skpdId) {
            $.ajax( {
                url: "{{ route('code.program') }}",
                dataType: 'json',
                data:  {
                    skpd_id: skpdId,
                },
                success: function (data) {
                    $('#programCode').val(data);
                }
            })
        }

    </script>
@endsection