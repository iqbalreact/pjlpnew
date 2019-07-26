@extends('adminlte::page')

@section('title', 'Pengguna | '.env('APP_NAME'))

@section('content_header')
    <h1>Pengguna</h1>

    {{ Breadcrumbs::render('account') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Pengguna</h3>
                    <a href="{{ route('account.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="account-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>NIP</th>
                                <th>Name</th>
                                <th>Role</th>
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
        var oTable = $('#account-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.account') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'nip', name: 'nip', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'role', name: 'role', searchable:'false', orderable: 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop