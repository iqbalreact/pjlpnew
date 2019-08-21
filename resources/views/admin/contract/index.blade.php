@extends('adminlte::page')

@section('title', 'Kontrak Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Kontrak Kerja</h1>

    {{ Breadcrumbs::render('contract') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">   
                    <h3 class="box-title">Filter</h3>
                </div>
                <div class="box-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="inputProgram" class="col-sm-2 control-label">Program @include('components.required')</label>
                
                            <div class="col-sm-9">
                                <select name="program_id" id="programSelect" class="form-control"></select>
                            </div>

                            <div class="col-sm-1">
                                <button class="btn btn-danger" id="clearProgram" type="button"><i class="fa fa-close"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputProgram" class="col-sm-2 control-label">Kegiatan @include('components.required')</label>
                
                            <div class="col-sm-9">
                                <select name="activity_id" id="activitySelect" class="form-control"></select>
                            </div>

                            <div class="col-sm-1">
                                <button class="btn btn-danger" id="clearActivity" type="button"><i class="fa fa-close"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputWorkPackage" class="col-sm-2 control-label">Paket Pekerjaan @include('components.required')</label>
                    
                            <div class="col-sm-9">
                                <select name="work_package_id" id="workPackageSelect" class="form-control"></select>
                            </div>

                            <div class="col-sm-1">
                                <button class="btn btn-danger" id="clearWorkPackage" type="button"><i class="fa fa-close"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button
                                    id="findData" 
                                    type="button" 
                                    class="btn btn-primary">
                                        <i class="fa fa-search"></i> Cari
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Kontrak</h3>
                    <a href="{{ route('contract.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="contract-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Program</th>
                                <th>Kegiatan</th>
                                <th>Paket Pekerjaan</th>
                                <th>Jumlah Kontrak</th>
                                <th width="15%">Action</th>
                            </tr>
                        </thead>
                    </table>                
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
<script>
    var oTable = $('#contract-table').dataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        order: [[ 0, 'desc' ]],
        deferRender:    true,
        ajax: {
            url: '{!! route('fetch.contract') !!}',
            data: function (d) {
                d.workPackageId = $('#workPackageSelect').val(),
                d.programId = $('#programSelect').val(),
                d.activityId = $('#activitySelect').val()
            }
        },
        columns: [
            { data: 'id', name: 'id', class:'hide' },
            { data: 'program', name: 'activity.program.name', searchable:'true'},
            { data: 'activity', name: 'activity.name', searchable:'true'},
            { data: 'name', name: 'name', searchable:'true'},
            { data: 'contracts_count', name: 'contracts_count', searchable:'false', orderable:'true'},
            { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
        ]
    });

    $("#programSelect").select2({
        dropdownAutoWidth : true,
        width: '100%',
        placeholder: "Pilih Program",
        ajax: {
            url: "{{ route('select.program') }}",
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

    $("#activitySelect").select2({
        dropdownAutoWidth : true,
        width: '100%',
        placeholder: "Pilih kegiatan",
        ajax: {
            url: "{{ route('select.activity') }}",
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
        placeholder: "Pilih Paket Pekerjaan",
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

    $('#findData').click(function() {
        reloadTable();
    });

    $('#clearProgram').click(function() {
        $('#programSelect').val(null).trigger('change');
        reloadTable();    
    });

    $('#clearActivity').click(function() {
        $('#activitySelect').val(null).trigger('change');
        reloadTable();    
    });

    $('#clearWorkPackage').click(function() {
        $('#workPackageSelect').val(null).trigger('change');
        reloadTable();    
    });

    function reloadTable(){
        oTable.api().ajax.reload();
    }
</script>
@stop