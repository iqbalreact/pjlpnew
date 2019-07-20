@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1>Pegawai Kontrak</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Pegawai</h3>
                    <a href="{{ route('employee.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="employee-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>NIK</th>
                                <th>Name</th>
                                <th>KTP</th>
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
        var oTable = $('#employee-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.employee') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'nik', name: 'nik', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'ktp', name: 'ktp', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop