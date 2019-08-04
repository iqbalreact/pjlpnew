@extends('adminlte::page')

@section('title', 'Detail Kontrak | '.env('APP_NAME'))

@section('content_header')
    <h1>Kontrak Detail</h1>

    {{ Breadcrumbs::render('contract') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Kontrak</h3>
                </div>
                <div class="box-body">
                    <table id="contractdetail-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>NIPJ</th>
                                <th>Nama</th>
                                <th>Posisi</th>
                                <th>Lokasi</th>
                                <th>Status</th>
                                <th>Tahun</th>
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
        
        var oTable = $('#contractdetail-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.contract.detail', ['work_package_id' => $id]) !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'employee_nipj', name: 'employee.nipj', searchable:'true'},
                { data: 'employee_name', name: 'employee.name', searchable:'true'},
                { data: 'position', name: 'position.name', searchable:'true'},
                { data: 'location', name: 'location.name', searchable:'true'},
                { data: 'status_transform', name: 'status', searchable:'true'},
                { data: 'year', name: 'start_date', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop