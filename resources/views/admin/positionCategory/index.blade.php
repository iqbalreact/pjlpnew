@extends('adminlte::page')

@section('title', 'Kategori Posisi | '.env('APP_NAME'))

@section('content_header')
    <h1>Kategori Posisi</h1>

    {{ Breadcrumbs::render('positionCategory') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List kategori posisi</h3>
                    <a href="{{ route('positionCategory.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="positionCategory-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
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
        var oTable = $('#positionCategory-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'asc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.positionCategory') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
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