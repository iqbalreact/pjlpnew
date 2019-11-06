@extends('adminlte::page')

@section('title', 'Create Leave | '.env('APP_NAME'))

@section('content_header')
    <h1>Cuti</h1>

    {{ Breadcrumbs::render('employee_new') }}
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
            <label for="inputEndDate" class="col-sm-2 control-label">Sisa Cuti</label>

            <div class="col-sm-10">
                {!! Form::text('end_date', '', ['id' => 'remain_leave', 'class' => 'form-control datepicker', 'placeholder'=> __('Sisa Cuti'), 'autocomplete' => 'off', 'readonly' => true] ) !!}
            </div>
        </div>
        <div id="table-date">
            <table class="table" id="dateRangeTable">
                <tr>
                    <th>Hari</th>
                    <th>Tanggal</th>
                    <th>Weekend</th>
                </tr>
            </table>
        </div>
    </div>
</div>
@stop

@section('js')
<script>
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


    $('#generateDateButton').click(function() {
        $.post('{{ route('leave.genereateDateRange') }}', {
                start_date: $('#start_date').val(), 
                end_date: $('#end_date').val(),
                employee_id: $('#employeeSelect').val()
            }, function(data, status) {

                if (status == 'success') {
                
                    // if (data.remaining_leave !== '') {
                    //     $('')
                    // }
                
                    $("tr:has(td)").remove();

                    $.each(data.dates, function (i, item) {
                        console.log(item.day);
                        $('<tr>').append(
                            $('<td>').text(item.day),
                            $('<td>').text(item.dateTransform),
                            $('<td>').html(item.weekend)
                        ).appendTo('#dateRangeTable');
                        
                    });
                } else {
                    // console.log('not success');
                }
            });
    })
</script>
@endsection