@extends('adminlte::page')

@section('title', 'Laporan Pemeriksaan Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Laporan Pemeriksan Pekerjaan</h1>

    {{ Breadcrumbs::render('report_workInspection') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Generate Laporan</h3>
    </div>

    <div class="box-body">
        <form class="form-horizontal" action="{{ route('report.workInspection.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="inputMonth" class="col-sm-2 control-label">Bulan dan Tahun @include('components.required')</label>

                <div class="col-sm-10">
                    {!! Form::text('date', '', ['id' => 'date', 'class' => 'form-control datepicker', 'placeholder'=> __('Bulan dan Tahun'), 'autocomplete' => 'off', 'required' => true] ) !!}
                </div>
            </div>
            <div class="form-group">
                <label for="inputMonth" class="col-sm-2 control-label">Jenis @include('components.required')</label>

                <div class="col-sm-10">
                    <select class="form-control" name="type">
                        <option value="1">Apel</option>
                        <option value="2">Kehadiran</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>  
            </div>        
        </form>
    </div>
</div>

<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Surat Pemeriksaan</h3>
    </div>

    <div class="box-body">
        <a href="{{ route('report.workInspectionLetter') }}" class="btn btn-primary">Download</a>
    </div>
</div>
@stop

@section('js2')
<script>
    $('.datepicker').datepicker({
        autoclose: true,
        orientation: 'bottom',
        format: 'MM yyyy',
        viewMode: "months", 
        minViewMode: "months"
    });    
</script>
@endsection