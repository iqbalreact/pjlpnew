@extends('adminlte::page')

@section('title', 'Posisi | '.env('APP_NAME'))

@section('content_header')
    <h1>Posisi</h1>

    {{ Breadcrumbs::render('position') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List posisi</h3>
                    <a href="{{ route('position.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="position-table" class="table">
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
        var oTable = $('#position-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'asc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.position') !!}',
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