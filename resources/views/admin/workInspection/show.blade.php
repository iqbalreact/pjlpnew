@extends('adminlte::page')

@section('title', 'Detail Surat Serah Terima | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Surat Serah Terima</h1>

    {{-- {{ Breadcrumbs::render('workDay_show', $data) }} --}}
@stop

@section('content')
     <div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Tentang</a></li>
                    {{-- <li><a href="#log" data-toggle="tab" aria-expanded="true">Change Log</a></li> --}}
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.workInspection.show.about')
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Generate Lampiran</h3>
        </div>
    
        <div class="box-body">
            <form class="form-horizontal" action="{{ route('report.workInspection.post') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="employee_id" value="{{ $data->employee_id }}">
                <input type="hidden" name="contract_id" value="{{ $data->contract_id }}">
                <input type="hidden" name="work_inspection_id" value="{{ $data->id }}">
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
                            <option value="1">Apel Pagi</option>
                            <option value="2">Kehadiran</option>
                            <option value="3">Penilaian</option>
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
@stop

@section('js')
<script>
    $('.datepicker').datepicker({
        autoclose: true,
        orientation: 'bottom',
        format: 'MM yyyy',
        viewMode: "months", 
        minViewMode: "months"
    });    
</script>
@stop