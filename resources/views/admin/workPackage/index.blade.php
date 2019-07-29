@extends('adminlte::page')

@section('title', 'Paket Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Paket Pekerjaan</h1>

    {{ Breadcrumbs::render('workPackage') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Paket Pekerjaan</h3>
                    <a href="{{ route('workPackage.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="workPackage-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Kode Paket Pekerjaan</th>
                                <th>Nama</th>
                                <th>Kegiatan</th>
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
    $(function() {
        var oTable = $('#workPackage-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.workPackage') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'code', name: 'code', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'workPackage', name: 'activity_id', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop