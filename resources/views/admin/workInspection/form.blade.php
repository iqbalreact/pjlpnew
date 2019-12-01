<div class="box-body">

    @if(\Auth::user()->getRoles() == 'superadmin')

        @if(isset($data->skpd))
            <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}"">
                <label for="inputSKPD" class="col-sm-2 control-label">SKPD @include('components.required')</label>

                <div class="col-sm-10">
                    <input type="text" value="{{ $data->skpd->name }}" class="form-control" readonly>
                    <input name="skpd_id" type="hidden" value="{{ $data->skpd->id }}">

                    @if ($errors->has('skpd_id'))
                        <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                    @endif
                </div>
            </div>
        @else
            <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
                <label for="inputSKPD" class="col-sm-2 control-label">SKPD @include('components.required')</label>
        
                <div class="col-sm-10">
                    <select name="skpd_id" id="skpdSelect" class="form-control"></select>
                    
                    @if ($errors->has('skpd_id'))
                        <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                    @endif
                </div>
            </div>
        @endif

    @else

        <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}"">
            <label for="inputSKPD" class="col-sm-2 control-label">SKPD @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $skpd->name }}" class="form-control" readonly>
                <input name="skpd_id" type="hidden" value="{{ $skpd->id }}">

                @if ($errors->has('skpd_id'))
                    <span class="help-block">{{ $errors->first('skpd_id') }}</span>
                @endif
            </div>
        </div>

    @endif


    @if(isset($data->functionary))
        <div class="form-group {{ $errors->has('functionary_id') ? 'has-error' : '' }}"">
            <label for="inputFuntionary" class="col-sm-2 control-label">Pejabat PPTK @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $data->functionary->name }}" class="form-control" readonly>
                <input name="functionary_id" type="hidden" value="{{ $data->functionary->id }}">

                @if ($errors->has('functionary_id'))
                    <span class="help-block">{{ $errors->first('functionary_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('functionary_id') ? 'has-error' : '' }}">
            <label for="inputFunctionaryId" class="col-sm-2 control-label">Pejabat PPTK @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="functionary_id" id="functionarySelect" class="form-control"></select>
                
                @if ($errors->has('functionary_id'))
                    <span class="help-block">{{ $errors->first('functionary_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    @if(isset($data->functionaryPPTK))
        <div class="form-group {{ $errors->has('functionary_pptk_id') ? 'has-error' : '' }}"">
            <label for="inputFuntionary" class="col-sm-2 control-label">Pejabat PPKOM @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $data->functionaryPPTK->name }}" class="form-control" readonly>
                <input name="functionary_pptk_id" type="hidden" value="{{ $data->functionaryPPTK->id }}">

                @if ($errors->has('functionary_pptk_id'))
                    <span class="help-block">{{ $errors->first('functionary_pptk_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('functionary_pptk_id') ? 'has-error' : '' }}">
            <label for="inputFunctionaryId" class="col-sm-2 control-label">Pejabat PPKOM @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="functionary_pptk_id" id="functionaryPPTKSelect" class="form-control"></select>
                
                @if ($errors->has('functionary_pptk_id'))
                    <span class="help-block">{{ $errors->first('functionary_pptk_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    @if(isset($data->employee))
        <div class="form-group {{ $errors->has('employee_id') ? 'has-error' : '' }}"">
            <label for="inputEmployee" class="col-sm-2 control-label">PJLP @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $data->employee->name }}" class="form-control" readonly>
                <input name="employee_id" type="hidden" value="{{ $data->employee->id }}">

                @if ($errors->has('employee_id'))
                    <span class="help-block">{{ $errors->first('employee_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('employee_id') ? 'has-error' : '' }}">
            <label for="inputEmployee" class="col-sm-2 control-label">PJLP @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="employee_id" id="employeeSelect" class="form-control"></select>
                
                @if ($errors->has('employee_id'))
                    <span class="help-block">{{ $errors->first('employee_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    <div class="form-group {{ $errors->has('number') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nomer @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('number', $edit ? $data->number : $initNumber, ['class' => 'form-control', 'placeholder'=> __('Nomer Surat'), 'required' => true] ) !!}
            
            @if ($errors->has('number'))
                <span class="help-block">{{ $errors->first('number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('date') ? 'has-error' : '' }}">
        <label for="inputStartDate" class="col-sm-2 control-label">Tanggal Terbit @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('date', $edit ? $data->date : old('start_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal terbit'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('date'))
                <span class="help-block">{{ $errors->first('date') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('number') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nomer SPK @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('spk_number', $edit ? $data->spk_number : old('spk_number'), ['class' => 'form-control', 'placeholder'=> __('Nomer SPK'), 'required' => true] ) !!}
            
            @if ($errors->has('spk_number'))
                <span class="help-block">{{ $errors->first('spk_number') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('spk_date') ? 'has-error' : '' }}">
        <label for="inputStartDate" class="col-sm-2 control-label">Tanggal SPK @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('spk_date', $edit ? $data->spk_date : old('spk_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal SPK'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('spk_date'))
                <span class="help-block">{{ $errors->first('spk_date') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('section_2') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Bagian 1 @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::textArea('section_2', $edit ? $data->section_2 : $initSection2, ['class' => 'form-control', 'placeholder'=> __('Bagian 2'), 'required' => true] ) !!}
            
            @if ($errors->has('section_2'))
                <span class="help-block">{{ $errors->first('section_2') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('section_3') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Bagian 2 @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::textArea('section_3', $edit ? $data->section_3 : $initSection3, ['class' => 'form-control', 'placeholder'=> __('Bagian 3'), 'required' => true] ) !!}
            
            @if ($errors->has('section_3'))
                <span class="help-block">{{ $errors->first('section_3') }}</span>
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

        CKEDITOR.config.toolbar = [
            ['placeholder_select', 'FontSize', 'Bold','Italic','Underline','StrikeThrough','-','Undo','Redo','-','Cut','Copy','Paste','Find','Replace','-','Outdent','Indent','-','NumberedList','BulletedList'],
        ];

        CKEDITOR.config.extraPlugins = 'placeholder';
        CKEDITOR.config.extraPlugins = 'placeholder_select';

        CKEDITOR.config.placeholder_select = {
            placeholders: ['FirstName', 'LastName']
        };

        CKEDITOR.replace( 'section_1' );
        CKEDITOR.replace( 'section_2' );
        CKEDITOR.replace( 'section_3' );

        //Date picker
        $('.datepicker').datepicker({
            autoclose: true,
            orientation: 'bottom',
            format: 'dd-mm-yyyy'
        });

        $("#employeeSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama PJLP",
            ajax: {
                url: "{{ route('select.employee') }}",
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

        $("#functionarySelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama pejabat",
            ajax: {
                url: "{{ route('select.functionary') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                        occupation: 'pptk'
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

        $("#functionaryPPTKSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama pejabat",
            ajax: {
                url: "{{ route('select.functionary') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                        occupation: 'ppkom'
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

        $("#functionaryPPTK2Select").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama pejabat",
            ajax: {
                url: "{{ route('select.functionary') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                        occupation: 'pptk'
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
