@extends('adminlte::page')

@section('title', 'Kegiatan | '.env('APP_NAME'))

@section('content_header')
    <h1>Kegiatan</h1>

    {{ Breadcrumbs::render('activity') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Kegiatan</h3>
                    <a href="{{ route('activity.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="activity-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Kode Kegiatan</th>
                                <th>Nama</th>
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
        var oTable = $('#activity-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.activity') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'code', name: 'code', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop