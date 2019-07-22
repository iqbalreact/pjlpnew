@extends('adminlte::page')

@section('title', 'Log Aktifitas | '.env('APP_NAME'))

@section('content_header')
    <h1>Log Aktifitas</h1>

    {{ Breadcrumbs::render('log') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Log</h3>
                </div>
                <div class="box-body">
                    <table id="activity-table" class="table" width="100%">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Tanggal</th>
                                <th>Subjek</th>
                                <th>Nama Subjek</th>
                                <th>Aksi</th>
                                <th>Oleh</th>
                                <th width="15%">Detail</th>
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
                { data: 'created_at', name: 'created_at', searchable:'true'},
                { data: 'subject_type', name: 'subject_type', searchable:'true'},
                { data: 'subject_name', name: 'subject_name', searchable:'true'},
                { data: 'description', name: 'description', searchable:'true'},
                { data: 'causer_name', name: 'causer_name', searchable:'false', 'orderable': 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop