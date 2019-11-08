@extends('adminlte::page')

@section('title', 'Cuti | '.env('APP_NAME'))

@section('content_header')
    <h1>Cuti</h1>

    {{ Breadcrumbs::render('leave') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Cuti</h3>
                    <a href="{{ route('leaveEmployee.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="leave-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>NIPJ</th>
                                <th>Nama</th>
                                <th>Tanggal Mulai</th>
                                <th>Tanggal Selesai</th>
                                <th>Jumlah Hari</th>
                                <th>Jenis Cuti</th>
                                <th>Action</th>
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
        var oTable = $('#leave-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.historyLeaveEmployee') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'employee_nipj', name: 'employee.nipj', searchable:'true'},
                { data: 'employee_name', name: 'employee.name', searchable:'true'},
                { data: 'start_date', name: 'start_date', searchable:'true'},
                { data: 'end_date', name: 'end_date', searchable:'true'},
                { data: 'total_day', name: 'total_day', searchable:'true'},
                { data: 'type', name: 'leave_type', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop