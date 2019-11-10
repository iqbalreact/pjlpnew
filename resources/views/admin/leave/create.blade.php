@extends('adminlte::page')

@section('title', 'Create Leave | '.env('APP_NAME'))

@section('content_header')
    <h1>Cuti</h1>

    {{ Breadcrumbs::render('leave_new') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Buat Baru</h3>
    </div>
    <div class="box-body">
        <div class="form-horizontal" id="contractForm">
            <div class="form-group {{ $errors->has('employee_id') ? 'has-error' : '' }}">
                <label for="inputEmployee" class="col-sm-2 control-label">PJLP @include('components.required')</label>
        
                <div class="col-sm-10">
                    <select name="employee_id" id="employeeSelect" class="form-control"></select>
                    
                    @if ($errors->has('employee_id'))
                        <span class="help-block">{{ $errors->first('employee_id') }}</span>
                    @endif
                </div>
            </div>

            <div class="form-group {{ $errors->has('leave_type') ? 'has-error' : '' }}">
                <label for="inputStartDate" class="col-sm-2 control-label">Jenis Cuti @include('components.required')</label>

                <div class="col-sm-10">
                    <select name="" id="leaveType" class="form-control">
                        <option value="0">Cuti Regular</option>
                        <option value="1">Cuti Melahirkan / Kecelakaan Kerja</option>
                    </select>
                </div>
            </div>

            <div class="form-group {{ $errors->has('start_date') ? 'has-error' : '' }}">
                <label for="inputStartDate" class="col-sm-2 control-label">Tanggal Mulai @include('components.required')</label>

                <div class="col-sm-10">
                    {!! Form::text('start_date', '', ['id' => 'start_date','class' => 'form-control datepicker', 'placeholder'=> __('Tanggal mulai'), 'autocomplete' => 'off'] ) !!}
                    
                    @if ($errors->has('start_date'))
                        <span class="help-block">{{ $errors->first('start_date') }}</span>
                    @endif
                </div>
            </div>

            <div class="form-group {{ $errors->has('end_date') ? 'has-error' : '' }}">
                <label for="inputEndDate" class="col-sm-2 control-label">Tanggal Selesai @include('components.required')</label>

                <div class="col-sm-10">
                    {!! Form::text('end_date', '', ['id' => 'end_date', 'class' => 'form-control datepicker', 'placeholder'=> __('Tanggal selesai'), 'autocomplete' => 'off'] ) !!}
                    
                    @if ($errors->has('end_date'))
                        <span class="help-block">{{ $errors->first('end_date') }}</span>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button 
                        id="generateDateButton"
                        type="button" 
                        class="btn btn-primary">
                            Generate
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="box box-primary">
    <div class="box-body">
        <div class="form-horizontal" id="contractForm">
            <div class="form-group">
                <label class="col-sm-2 control-label">Sisa Cuti</label>
    
                <div class="col-sm-10">
                    {!! Form::text('remain_leave', '', ['id' => 'remain_leave', 'class' => 'form-control', 'placeholder'=> __('Sisa Cuti'), 'autocomplete' => 'off', 'readonly' => true] ) !!}
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Cuti yang diajukan</label>
        
                <div class="col-sm-10">
                    {!! Form::text('proposed_leave', '', ['id' => 'proposed_leave', 'class' => 'form-control', 'placeholder'=> __('Cuti yang diajukan'), 'autocomplete' => 'off', 'readonly' => true] ) !!}
                </div>
            </div>

            <div class="form-group hidden" id="text-leave">
                <label class="col-sm-2 control-label"></label>
        
                <div class="col-sm-10">
                    <p class="text-red"> Cuti yang diajukan melebihi sisa cuti </p>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button 
                        id="saveLeaveButton"
                        type="button" 
                        class="btn btn-success">
                            <i class="fa fa-save"></i> Simpan
                    </button>
                </div>
            </div>
        </div>

        <br>
        <br>

        <table class="table" id="dateRangeTable">
            <tr>
                <th>Hari</th>
                <th>Tanggal</th>
                <th>Weekend</th>
                <th>Action</th>
            </tr>
        </table>
    </div>
</div>
@stop

@section('js')
<script>

    var dateValue       = [];
    var remainingLeave  = 0;
    var sixMonth        = "";
    var contract_id     = "";

    $(function(){
        //Date picker
        $('.datepicker').datepicker({
            autoclose: true,
            orientation: 'bottom',
            format: 'dd-mm-yyyy'
        });
    })

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

    function collectDate() {
        $("input[type='checkbox']").change(function() {
            countChecked();
        });
    }

    function countChecked() {
        dateValue = [];
        $("input[type='checkbox']:checked").each(function(){
            dateValue.push($(this).val());
        });
        
        $('#proposed_leave').val(dateValue.length);
        disableSaveButton();
    }

    $('#leaveType').change(function() {
        disableSaveButton();
    });

    function disableSaveButton()
    {
        if (remainingLeave < dateValue.length && $('#leaveType').val() != 1) {
            $('#saveLeaveButton').prop('disabled', true);
            $('#text-leave').removeClass('hidden');
        } else {
            $('#saveLeaveButton').prop('disabled', false);
            $('#text-leave').addClass('hidden');
        }
    }

    function warningInput() {
        if ($('#employeeSelect').val() == '') {
            swal("Perhatian", "PJLP tidak boleh kosong", "warning");
            return false;
        }

        if ($('#start_date').val() == '') {
            swal("Perhatian", "Tanggal mulai tidak boleh kosong", "warning");
            return false;
        }

        if ($('#end_date').val() == '') {
            swal("Perhatian", "Tanggal selesai tidak boleh kosong", "warning");
            return false; 
        }

        if ($('#start_date').val() > $('#end_date').val())  {
            swal("Perhatian", "Tanggal mulai tidak boleh lebih dari tanggal selesai", "warning");
            return false; 
        }

        return true;
    }


    $('#saveLeaveButton').click(function() {

        if(!warningInput()) {
            return;
        };

        if (sixMonth == 0 && $('#leaveType').val() == 0)  {
            swal("Perhatian", "PJLP belum bisa mengajukan cuti karena masa kerja kurang dari 6 bulan", "warning");
            return false; 
        }
        
        $.post('{{ route('leaveEmployee.store') }}', {
            employee_id: $("#employeeSelect").val(),
            contract_id: contract_id,
            start_date: $('#start_date').val(), 
            end_date: $('#end_date').val(),
            rangeDate: dateValue,
            diffday: dateValue.length,
            leave_type: $('#leaveType').val()
        }, function(data, status) {

            if (status == 'success') {
                swal("Sukses!", "Cuti berhasil disimpan", "success").then(function() {
                        window.location = "/admin/leaveEmployee";
                    });
            } else {
                swal("Gagal", "Cuti gagal disimpan", "error");
            }

        });
    });

    $('#generateDateButton').click(function() {
        
        if(!warningInput()) {
            return;
        };
        
        $.post('{{ route('leave.genereateDateRange') }}', {
            start_date: $('#start_date').val(), 
            end_date: $('#end_date').val(),
            employee_id: $('#employeeSelect').val()
        }, function(data, status) {

            if (status == 'success') {
                
                if (data.remaining_leave !== '') {
                    remainingLeave  = data.remaining_leave.remain_leave;
                    contract_id     = data.remaining_leave.contract_id;
                    sixMonth        = data.contract;
                    $('#remain_leave').val(remainingLeave);
                }
            
                $("tr:has(td)").remove();

                $.each(data.dates, function (i, item) {
                    $('<tr>').append(
                        $('<td>').text(item.day),
                        $('<td>').text(item.dateTransform),
                        $('<td>').html(item.weekend),
                        $('<td>').html(item.checkbox)
                    ).appendTo('#dateRangeTable');
                    
                });

                collectDate();
                countChecked();

            } else {

            }
        });
    })
</script>
@endsection