<div class="box-body">
    <div class="form-group {{ $errors->has('number') ? 'has-error' : '' }}">
        <label for="inputNumber" class="col-sm-2 control-label">Nomer @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('number', $edit ? $data->number : old('number'), ['class' => 'form-control', 'placeholder'=> __('017.001/SPK/PET/DISKOMINFO/IX/2019')] ) !!}
            
            @if ($errors->has('nipj'))
                <span class="help-block">{{ $errors->first('number') }}</span>
            @endif
        </div>  
    </div>

    @if(isset($employee))
        <div class="form-group {{ $errors->has('employee_id') ? 'has-error' : '' }}"">
            <label for="inputEmployee" class="col-sm-2 control-label">PJLP @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $employee->name }}" class="form-control" readonly>
                <input name="employee_id" type="hidden" value="{{ $employee->id }}">

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

    @if(isset($workPackage))
        <div class="form-group {{ $errors->has('work_package_id') ? 'has-error' : '' }}">
            <label for="inputWorkPackage" class="col-sm-2 control-label">Paket Pekerjaan @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $workPackage->name }}" class="form-control" readonly>
                <input name="work_package_id" type="hidden" value="{{ $workPackage->id }}">

                @if ($errors->has('work_package_id'))
                    <span class="help-block">{{ $errors->first('work_package_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('work_package_id') ? 'has-error' : '' }}">
            <label for="inputWorkPackage" class="col-sm-2 control-label">Paket Pekerjaan @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="work_package_id" id="workPackageSelect" class="form-control"></select>
                
                @if ($errors->has('work_package_id'))
                    <span class="help-block">{{ $errors->first('work_package_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    @if(isset($functionary))
        <div class="form-group {{ $errors->has('occupation_id') ? 'has-error' : '' }}">
            <label for="inputFunctionary" class="col-sm-2 control-label">Pejabat @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $functionary->name }}" class="form-control" readonly>
                <input name="occupation_id" type="hidden" value="{{ $functionary->id }}">

                @if ($errors->has('occupation_id'))
                    <span class="help-block">{{ $errors->first('occupation_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('occupation_id') ? 'has-error' : '' }} hidden" id="occupationArea">
            <label for="inputFunctionary" class="col-sm-2 control-label">Pejabat @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="occupation_id" id="occupationSelect" class="form-control"></select>
                
                @if ($errors->has('occupation_id'))
                    <span class="help-block">{{ $errors->first('occupation_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    @if(isset($location))
        <div class="form-group {{ $errors->has('location_id') ? 'has-error' : '' }}">
            <label for="inputLocation" class="col-sm-2 control-label">Lokasi @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $location->name }}" class="form-control" readonly>
                <input name="location_id" type="hidden" value="{{ $location->id }}">

                @if ($errors->has('location_id'))
                    <span class="help-block">{{ $errors->first('location_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('location_id') ? 'has-error' : '' }} hidden" id="locationArea">
            <label for="inputLocation" class="col-sm-2 control-label">Lokasi @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="location_id" id="locationSelect" class="form-control"></select>
                
                @if ($errors->has('location_id'))
                    <span class="help-block">{{ $errors->first('location_id') }}</span>
                @endif
            </div>
        </div>
    @endif


    @if(isset($position))
        <div class="form-group {{ $errors->has('position_id') ? 'has-error' : '' }}">
            <label for="inputPosition" class="col-sm-2 control-label">Posisi @include('components.required')</label>

            <div class="col-sm-10">
                <input type="text" value="{{ $position->name }}" class="form-control" readonly>
                <input name="position_id" type="hidden" value="{{ $position->id }}">

                @if ($errors->has('position_id'))
                    <span class="help-block">{{ $errors->first('position_id') }}</span>
                @endif
            </div>
        </div>
    @else
        <div class="form-group {{ $errors->has('position_id') ? 'has-error' : '' }}">
            <label for="inputPosition" class="col-sm-2 control-label">Posisi @include('components.required')</label>
    
            <div class="col-sm-10">
                <select name="position_id" id="positionSelect" class="form-control"></select>
                
                @if ($errors->has('position_id'))
                    <span class="help-block">{{ $errors->first('position_id') }}</span>
                @endif
            </div>
        </div>
    @endif

    <div class="form-group {{ $errors->has('start_date') ? 'has-error' : '' }}">
        <label for="inputStartDate" class="col-sm-2 control-label">Tanggal Mulai @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('start_date', $edit ? $data->start_date : old('start_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal mulai'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('start_date'))
                <span class="help-block">{{ $errors->first('start_date') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('end_date') ? 'has-error' : '' }}">
        <label for="inputEndDate" class="col-sm-2 control-label">Tanggal Selesai @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('end_date', $edit ? $data->end_date : old('start_date'), ['class' => 'form-control datepicker', 'placeholder'=> __('Tanggal mulai'), 'autocomplete' => 'off'] ) !!}
            
            @if ($errors->has('end_date'))
                <span class="help-block">{{ $errors->first('end_date') }}</span>
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

    <br>

    <div class="form-group">
        <label for="inputStatus" class="col-sm-2 control-label">Gaji @include('components.required')</label>

        <div class="col-sm-10">
            <div class="table-responsive">  
                <table class="table" id="dynamic_field">  
                    <tr>  
                        <td><select name="salaries[component][]" id="" class="form-control salaryComponent" required></select></td>  
                        <td><input type="number" name="salaries[nominal][]" placeholder="Masukan nominal" class="form-control name_list" required></td>  
                        <td><button type="button" name="add" id="add" class="btn btn-success">Tambah</button></td>  
                    </tr>  
                </table>
            </div>
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
    var workPackageId = '';

    function salarySelectLoad() {
        $(".salaryComponent").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih komponen gaji",
            ajax: {
                url: "{{ route('select.salaryComponent') }}",
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
    }

    $(function() {

        salarySelectLoad();

        var i=1;  

        $('#add').click(function(){  
            i++;  
            $('#dynamic_field').append('<tr id="row'+i+'" class="dynamic-added"><td><select name="salaries[component][]" id="" class="form-control salaryComponent" required></select></td><td><input type="number" name="salaries[nominal][]" placeholder="Masukan nominal" class="form-control name_list" required></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
            salarySelectLoad();
        });  

        $(document).on('click', '.btn_remove', function(){  
            var button_id = $(this).attr("id");   
            $('#row'+button_id+'').remove();  
        });


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

        $("#locationSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama lokasi",
            ajax: {
                url: "{{ route('select.location') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                        work_package_id: workPackageId
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

        $("#occupationSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Pilih Pejabat",
            ajax: {
                url: "{{ route('select.occupation') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                        work_package_id: workPackageId
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

        $("#positionSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama posisi",
            ajax: {
                url: "{{ route('select.position') }}",
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

        $("#workPackageSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Ketik dan pilih nama paket pekerjaan",
            ajax: {
                url: "{{ route('select.workPackage') }}",
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

        onChangeWorkPackage();

    });

    $('#workPackageSelect').change( function() {
        onChangeWorkPackage()
    });

    function onChangeWorkPackage() {
        workPackageId = $('#workPackageSelect').val();
        $('#locationSelect').val('').trigger('change');
        $('#occupationSelect').val('').trigger('change');

        if (workPackageId !== null) {
            $('#occupationArea').removeClass("hidden");
            $('#locationArea').removeClass("hidden");
        } else {
            $('#occupationArea').addClass("hidden");
            $('#locationArea').addClass("hidden");
        }
    }
</script>
@stop
