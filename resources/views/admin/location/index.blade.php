@extends('adminlte::page')

@section('title', 'Lokasi | '.env('APP_NAME'))

@section('content_header')
    <h1>Lokasi</h1>

    {{ Breadcrumbs::render('location') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Lokasi</h3>
                    <a href="{{ route('location.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="location-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nama</th>
                                <th>SKPD</th>
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
        var oTable = $('#location-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.location') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'skpd', name: 'skpd.name', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.api().ajax.reload();
        }
    });
</script>
@stop