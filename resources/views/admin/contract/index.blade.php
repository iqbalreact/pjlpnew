@extends('adminlte::page')

@section('title', 'Kontrak Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Kontrak Kerja</h1>

    {{ Breadcrumbs::render('contract') }}
@stop

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="pull-right">
                <ul class="list-inline">
                    <li><h1>{{ $countProgram }}</h1><span>Program</span></li>
                    <li><h1>{{ $countActivity }}</h1><span>Kegiatan</span></li>
                    <li><h1>{{ $countWorkPackage }}</h1><span>Paket Pekerjaan</span></li>
                    <li><h1>{{ $countContract }}</h1><span>Kontrak Aktif</span></li>
                </ul>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Kontrak</h3>
                    <a href="{{ route('contract.create') }}" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Kontrak Baru</a>


                    <form class="form-horizontal" style="margin-top:40px;">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label for="inputProgram" class="col-sm-2 control-label">Program @include('components.required')</label>
                        
                                    <div class="col-sm-10">
                                        <select name="program_id" id="programSelect" class="form-control"></select>
                                    </div>
                                </div>                                
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <button
                                        id="findData" 
                                        type="button" 
                                        class="btn btn-primary">
                                            <i class="fa fa-search"></i> Tampilkan Data
                                    </button>
                                    <button class="btn btn-danger" id="clearProgram" type="button"><i class="fa fa-close"></i> Reset</button>
                                </div>                                
                            </div>
                        </div>


                    </form>

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
        placeholder: "Ketik dan pilih nama program",
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
        placeholder: "Ketik dan pilih nama kegiatan",
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