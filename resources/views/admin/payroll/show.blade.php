@extends('adminlte::page')

@section('title', 'Detail Gaji | '.env('APP_NAME'))

@section('content_header')
    <h1>Detail Gaji</h1>

    {{ Breadcrumbs::render('payroll_show') }}
@stop

@section('content')
<div class="row">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#about" data-toggle="tab" aria-expanded="true">Detail</a></li>
                    <li><a href="#log" data-toggle="tab" aria-expanded="true">Change Log</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="about">
                        @include('admin.payroll.show.about')
                    </div>
                    <div class="tab-pane" id="log">
                        {{-- @include('admin.partials.activityLog', ['subject_id' => $data->id, 'models' => 'App\Models\WorkPackage']) --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
<script>
    $('.number_mask').inputmask({ 
        alias: 'decimal', 
        groupSeparator: '.',
        radixPoint: ',', 
        autoGroup: true,
        autoUnmask: true,
        removeMaskOnSubmit: true
    });
</script>
@stop