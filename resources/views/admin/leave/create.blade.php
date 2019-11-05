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


    $('#generateDateButton').click(function() {
        $.post('{{ route('leave.genereateDateRange') }}', {
                start_date: $('#start_date').val(), 
                end_date: $('#end_date').val()
            }, function(data, status) {
                if (status == 'success') {
                    // console.log('success');
                } else {
                    // console.log('not success');
                }
            });
    })
</script>
@endsection