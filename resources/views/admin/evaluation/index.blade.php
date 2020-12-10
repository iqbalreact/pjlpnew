@extends('adminlte::page')

@section('title', 'Laporan Pemeriksaan Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>EVALUASI PRESTASI KERJA</h1>

    {{ Breadcrumbs::render('report_workInspection') }}
@stop

@section('content')
<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Generate Laporan</h3>
    </div>

    <div class="box-body">
        <form class="form-horizontal" action="{{ route('evaluation.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="inputMonth" class="col-sm-2 control-label">Pilih PJLP @include('components.required')</label>
                <div class="col-sm-9">
                    <select class="form-control" name="pjlp" id="pjlp" required>
                        <option value="">Pilih</option>
                        @foreach ($employees as $e)
                        <option value="{{ $e->id }}">{{ $e->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputMonth" class="col-sm-2 control-label">Tahun @include('components.required')</label>
                <div class="col-sm-9">
                    {!! Form::text('date', '', ['id' => 'date', 'name' => 'year' ,'class' => 'form-control datepicker', 'placeholder'=> __('Tahun'), 'autocomplete' => 'off', 'required' => true] ) !!}
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

@section('js2')
<script>
    $('.datepicker').datepicker({
        autoclose: true,
        orientation: 'bottom',
        format: 'yyyy',
        viewMode: "years",
        minViewMode: "years"
    });
    $('#pjlp').select2();
</script>
@endsection
