@extends('adminlte::page')

@section('title', 'Surat Perintah Mulai Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Surat Perintah Mulai Kerja</h1>

    {{ Breadcrumbs::render('workDay') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List Surat</h3>
                    <a href="{{ route('startWorkingLetter.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="workHandover-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nomer</th>
                                <th>Pihak Kedua</th>
                                <th>Posisi</th>
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
            ajax: '{!! route('fetch.startWorkingLetter') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'number', name: 'number', searchable:'true', orderable: 'true'},
                { data: 'employee', name: 'employee', searchable:'false', orderable: 'false'},
                { data: 'position', name: 'contract.position.name', searchable:'false', orderable: 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop