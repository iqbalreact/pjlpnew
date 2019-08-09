@extends('adminlte::page')

@section('title', 'PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>PJLP</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List PJLP</h3>
                    <a href="{{ route('employee.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="employee-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>NIPJ</th>
                                <th>Name</th>
                                <th>Masuk</th>
                                <th>Pulang</th>
                                <th>Apel</th>
                                <th>Terlambat</th>
                                <th>Aksi</th>
                                <th>Status</th>
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
            ajax: '{!! route('fetch.template') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'nipj', name: 'nipj', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'textbox', name: 'textbox', searchable:'false', orderable:'false', "width": "80px"},
                { data: 'textbox', name: 'textbox', searchable:'false', orderable:'false', "width": "80px"},
                { data: 'ceremony', name: 'ceremony', searchable:'false', orderable:'false', "width": "10%"},
                { data: 'late', name: 'late', searchable:'false', orderable:'false', "width": "10%"},
                { data: 'save', name: 'save', searchable:'false', orderable:'false', "width": "5%"},
                { data: 'save', name: 'save', searchable:'false', orderable:'false', "width": "5%"}
            ]
        });

        $('#employee-table tbody').on( 'click', 'tr button', function () {
            
            var from        = oTable.api().cell(0,3).nodes().to$().find('input').val();
            var to          = oTable.api().cell(0,4).nodes().to$().find('input').val();
            var ceremony    = oTable.api().cell(0,5).nodes().to$().find('select').val();
            var late        = oTable.api().cell(0,6).nodes().to$().find('select').val();

            console.log( from, to, ceremony, late );
        } );

        $('.datepicker').datepicker({
            autoclose: true,
            orientation: 'bottom',
            format: 'dd-mm-yyyy'
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop