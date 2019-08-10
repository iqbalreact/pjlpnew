@extends('adminlte::page')

@section('title', 'PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>Absensi</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-body">
                        <div class="form-group">
                                <label for="inputNIPJ" class="col-sm-2 control-label">Tanggal @include('components.required')</label>
        
                                <div class="col-sm-10">
                                    {!! Form::text('nipj', '', ['id' => 'date', 'class' => 'form-control datepicker', 'placeholder'=> __('Tanggal'), 'autocomplete' => 'off'] ) !!}
                                </div>
                            </div>
                </div>
            </div>
            <div class="box box-primary">
                <div class="box-header">   
                    <h3 class="box-title">Input Absensi</h3>
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
    var today = new Date();

    $(function() {
        $('.datepicker').datepicker({
            autoclose: true,
            orientation: 'bottom',
            format: 'dd-mm-yyyy'
        });    

        $( '.datepicker' ).datepicker( 'setDate', today );
    });

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
            { data: 'from', name: 'from', searchable:'false', orderable:'false', "width": "80px"},
            { data: 'to', name: 'to', searchable:'false', orderable:'false', "width": "80px"},
            { data: 'ceremony', name: 'ceremony', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'late', name: 'late', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'save', name: 'save', searchable:'false', orderable:'false', "width": "5%"},
            { data: 'status', name: 'status', searchable:'false', orderable:'false', "width": "5%"}
        ],
        fnDrawCallback: function( oSettings ) {
            $('.time').inputmask("hh:mm");
        }
    });

    $('#employee-table tbody').on( 'click', 'button', function () {

        var idx =  oTable.api().row( $(this).parents('tr') ).index();
        
        var from        = oTable.api().cell(idx,3).nodes().to$().find('input').val();
        var to          = oTable.api().cell(idx,4).nodes().to$().find('input').val();
        var ceremony    = oTable.api().cell(idx,5).nodes().to$().find('select').val();
        var late        = oTable.api().cell(idx,6).nodes().to$().find('select').val();

        oTable.api().cell(idx, 8).nodes().to$().find('.stateStatus').html("<img src='/img/cancel.png'>");
        console.log( from, to, ceremony, late );
    } );

    $('#date').change(function() {
        reloadTable();
    }) ;

    function reloadTable(){
        oTable.api().ajax.reload();
    }
    
</script>
@stop