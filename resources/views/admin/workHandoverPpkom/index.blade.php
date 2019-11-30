@extends('adminlte::page')

@section('title', 'Surat Serah Terima Pekerjaan | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Serah Terima Pekerjaan PPKOM ke PA</h1>

    {{ Breadcrumbs::render('workDay') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Surat</h3>
                    <a href="{{ route('workHandoverPpkom.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="workHandover-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nomer</th>
                                <th>Pejabat PPKOM</th>
                                <th>Pejabat PA</th>
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
        var oTable = $('#workHandover-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 1, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.workHandoverPpkom') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'number', name: 'number', searchable:'true', orderable: 'true'},
                { data: 'functionary_name', name: 'functionary_id', searchable:'false', orderable: 'false'},
                { data: 'functionary2_name', name: 'functionary2_id', searchable:'false', orderable: 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop