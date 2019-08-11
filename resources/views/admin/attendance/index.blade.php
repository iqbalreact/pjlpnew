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
                <div class="box-header">   
                    <h3 class="box-title">Filter</h3>
                </div>
                <div class="box-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="inputWorkPackage" class="col-sm-2 control-label">Paket Pekerjaan @include('components.required')</label>
                    
                            <div class="col-sm-10">
                                <select name="work_package_id" id="workPackageSelect" class="form-control"></select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputNIPJ" class="col-sm-2 control-label">Tanggal @include('components.required')</label>
    
                            <div class="col-sm-10">
                                {!! Form::text('date', '', ['id' => 'date', 'class' => 'form-control datepicker', 'placeholder'=> __('Tanggal'), 'autocomplete' => 'off'] ) !!}
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button
                                    id="findData" 
                                    type="button" 
                                    class="btn btn-primary">
                                        <i class="fa fa-search"></i> Cari
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="box box-primary" id="inputAttendace">
                <div class="box-header">   
                    <h3 class="box-title">Input Absensi</h3>
                </div>
                <div class="box-body">
                    <table id="employee-table" class="table" width="100%">
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

@section('js2')
<script>
    var today = new Date();
    var workPackageId = '';

    $('.datepicker').datepicker({
        autoclose: true,
        orientation: 'bottom',
        format: 'dd-mm-yyyy'
    });    

    $( '.datepicker' ).datepicker( 'setDate', today );

    var oTable = $('#employee-table').dataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        order: [[ 2, 'asc' ]],
        deferRender:    true,
        ajax: {
            url: '{!! route('fetch.template') !!}',
            data: function (d) {
                d.workPackageId = $('#workPackageSelect').val(),
                d.date = $('#date').val()
            }
        },
        columns: [
            { data: 'id', name: 'id', class:'hide' },
            { data: 'employee_nipj', name: 'employee.nipj', searchable:'true'},
            { data: 'employee_name', name: 'employee.name', searchable:'true'},
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
        
        var data = oTable.api().row( $(this).parents('tr') ).data();

        var employee_id = data.employee.id;
        var contract_id = data.id;
        var from        = oTable.api().cell(idx,3).nodes().to$().find('input').val();
        var to          = oTable.api().cell(idx,4).nodes().to$().find('input').val();
        var ceremony    = oTable.api().cell(idx,5).nodes().to$().find('select').val();
        var late        = oTable.api().cell(idx,6).nodes().to$().find('select').val();
               
        oTable.api().cell(idx, 8).nodes().to$().find('.stateStatus').html("<img src='/img/spinner.gif'>");

        $.post('{{ route('attendance.store') }}', {
            employee_id: employee_id, 
            contract_id: contract_id, 
            work_package_id: $('#workPackageSelect').val(), 
            date: $('#date').val(), 
            from: from,
            to: to,
            ceremony: ceremony,
            late: late
        }, function(data, status) {
            if (status == 'success') {
                oTable.api().cell(idx, 8).nodes().to$().find('.stateStatus').html("<img src='/img/checked.png'>");
            } else {
                oTable.api().cell(idx, 8).nodes().to$().find('.stateStatus').html("<img src='/img/cancel.png'>");
            }
        });
    } );

    $('#findData').click(function() {
        reloadTable();
    });

    function reloadTable(){
        oTable.api().ajax.reload();
    }
    
</script>

@include('admin.attendance.js.selectFilter')

@stop