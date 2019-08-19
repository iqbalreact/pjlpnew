@extends('adminlte::page')

@section('title', 'Jabatan | '.env('APP_NAME'))

@section('content_header')
    <h1>Jabatan</h1>

    {{ Breadcrumbs::render('occupation') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Jabatan</h3>
                    <a href="{{ route('occupation.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="occupation-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Pejabat</th>
                                <th>SKPD</th>
                                <th>Jabatan</th>
                                <th>Tanggal Mulai</th>
                                <th>Tanggal Selesai</th>
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
        var oTable = $('#occupation-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'asc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.occupation') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'functionary', name: 'functionary.name', searchable:'true'},
                { data: 'skpd', name: 'skpd.name', searchable:'true'},
                { data: 'position_transform', name: 'position', searchable:'true'},
                { data: 'start_date', name: 'start_date', searchable:'true'},
                { data: 'end_date', name: 'end_date', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop