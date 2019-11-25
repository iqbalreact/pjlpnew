<div class="box-body">
    @if($edit)
        <div class="form-group {{ $errors->has('nipj') ? 'has-error' : '' }}">
            <label for="inputNIPJ" class="col-sm-2 control-label">NIPJ @include('components.required')</label>

            <div class="col-sm-10">
                {!! Form::text('nipj', $edit ? $data->nipj : old('nipj'), ['class' => 'form-control', 'placeholder'=> __('NIPJ'), 'readonly' => true] ) !!}
                
                @if ($errors->has('nipj'))
                    <span class="help-block">{{ $errors->first('nipj') }}</span>
                @endif
            </div>
        </div>
    @endif

    @if(!isset($skpd) && \Auth::user()->getRoles() == 'superadmin')

        <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
            <label for="inputEmail" class="col-sm-2 control-label">SKPD @include('components.required')</label>

            <div class="col-sm-10">
                <select name="skpd_id" id="skpdSelect" class="form-control" required></select>
                
                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>
        
    @elseif($edit)
        <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
            <label for="inputSKPD" class="col-sm-2 control-label">SKPD</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $skpd->name }}" class="form-control" readonly>
                <input name="skpd_id" type="hidden" value="{{ $skpd->id }}">

                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>
        
    @endif

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama PJLP')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('ktp') ? 'has-error' : '' }}">
        <label for="inputKTPNumber" class="col-sm-2 control-label">No KTP @include('components.required')</label>

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

    <div class="form-group {{ $errors->has('gender') ? 'has-error' : '' }}">
        <label for="inputGender" class="col-sm-2 control-label">Jenis Kelamin @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('gender', $genders, $edit ? $data->gender : old('gender') ,['class' => 'form-control'])!!}

            @if ($errors->has('gender'))
                <span class="help-block">{{ $errors->first('gender') }}</span>
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

    <div class="form-group {{ $errors->has('religion') ? 'has-error' : '' }}">
        <label for="inputReligion" class="col-sm-2 control-label">Agama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('religion', $religions, $edit ? $data->religion : old('religion') ,['class' => 'form-control'])!!}

            @if ($errors->has('religion'))
                <span class="help-block">{{ $errors->first('religion') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('phone_number') ? 'has-error' : '' }}">
        <label for="inputPhoneNumber" class="col-sm-2 control-label">No Telepon @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('phone_number', $edit ? $data->phone_number : old('phone_number'), ['class' => 'form-control', 'placeholder'=> __('No Telepon'), 'required' => true] ) !!}
            @if ($errors->has('phone_number'))
                <span class="help-block">{{ $errors->first('phone_number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('bank_name') ? 'has-error' : '' }}">
        <label for="inputBank" class="col-sm-2 control-label">Bank</label>

        <div class="col-sm-10">
            {!! Form::select('bank_name', $banks, $edit ? $data->bank_name : old('bank_name') ,['class' => 'form-control'])!!}

            @if ($errors->has('bank_name'))
                <span class="help-block">{{ $errors->first('bank_name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('account_number') ? 'has-error' : '' }}">
        <label for="inputAccountNumber" class="col-sm-2 control-label">Rekening</label>

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
        });
    </script>
@endsection
