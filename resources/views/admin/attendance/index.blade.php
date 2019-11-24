@extends('adminlte::page')

@section('title', 'Absensi | '.env('APP_NAME'))

@section('content_header')
    <h1>Absensi</h1>

    {{ Breadcrumbs::render('attendace') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary" id="inputAttendace">
                <div class="box-header">   
                    <h3 class="box-title">Input Absensi</h3>

                    <form class="form-horizontal" style="margin-top:20px;">

                    <div class="row">
                        <div class="col-md-7">
                            <div class="form-group">
                                <label for="inputWorkPackage" class="col-sm-3 control-label">Paket Pekerjaan @include('components.required')</label>
                        
                                <div class="col-sm-9">
                                    <select name="work_package_id" id="workPackageSelect" class="form-control"></select>
                                </div>
                            </div>                            
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputNIPJ" class="col-sm-4 control-label">Tanggal @include('components.required')</label>
        
                                <div class="col-sm-8">
                                    {!! Form::text('date', '', ['id' => 'date', 'class' => 'form-control datepicker', 'placeholder'=> __('Tanggal'), 'autocomplete' => 'off'] ) !!}
                                </div>
                            </div>                            
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                    <button
                                        id="findData" 
                                        type="button" 
                                        class="btn btn-primary">
                                            <i class="fa fa-search"></i> Tampilkan Data
                                    </button>
                            </div>                            
                        </div>
                    </div>
                </form>

                </div>
                <div class="box-body">
                    <table id="employee-table" class="table" width="100%">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Id</th>
                                <th>NIPJ</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Masuk</th>
                                <th>Pulang</th>
                                <th>Apel</th>
                                <th>Terlambat</th>
                                <th>Aksi</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                    </table> 
                    
                    <div class="row">
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary btn-block" id="btn-submit">Bulk Insert Absensi</button>
                        </div>
                        <div class="col-md-10">
                                <div class="callout callout-info">
                                    <h4>PERHATIAN!</h4>
                                    <p>Bulk insert hanya bisa dilakukan setiap satu halaman</p>
                                </div>
                        </div>
                    </div>
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
        deferRender:    true,
        ajax: {
            url: '{!! route('fetch.attendance') !!}',
            data: function (d) {
                d.workPackageId = $('#workPackageSelect').val(),
                d.date = $('#date').val()
            }
        },
        'columnDefs': [
            {
                'targets': 0,
                'checkboxes': {
                'selectRow': true
                }
            }
        ],
        'select': {
            'style': 'multi'
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'id', name: 'id', class:'hide' },
            { data: 'employee_nipj', name: 'employee.nipj', searchable:'true', orderable:'false'},
            { data: 'employee_name', name: 'employee.name', searchable:'true', orderable:'false'},
            { data: 'attendance', name: 'attendance', searchable:'false', orderable:'false', "width": "80px"},
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

    // Handle form submission event
    $('#btn-submit').on('click', function(e){
        
        var rows_selected = oTable.api().column(0).checkboxes.selected();
        
        $.each(rows_selected, function(idx, rowId){
 
            var idx =  oTable.api().row( '#row-'+rowId ).index(); 
            var data = oTable.api().row( '#row-'+rowId ).data();
            
            submitAttendace(idx, data);

            $('#row-'+rowId+' input[type="checkbox"]:checked').trigger('click');
        });
    });

    $('#employee-table tbody').on( 'click', 'button', function () {

        var idx =  oTable.api().row( $(this).parents('tr') ).index();
        var data = oTable.api().row( $(this).parents('tr') ).data();

        submitAttendace(idx, data);
    } );

    function submitAttendace(idx, data) {

        var employee_id = data.employee_id;
        var contract_id = data.id;
        var attendance  = oTable.api().cell(idx,4).nodes().to$().find('select').val();
        var from        = oTable.api().cell(idx,5).nodes().to$().find('input').val();
        var to          = oTable.api().cell(idx,6).nodes().to$().find('input').val();
        var ceremony    = oTable.api().cell(idx,7).nodes().to$().find('select').val();
        var late        = oTable.api().cell(idx,8).nodes().to$().find('select').val();
        
        oTable.api().cell(idx, (10)).nodes().to$().find('.stateStatus').html("<img src='/img/spinner.gif'>");

        $.post('{{ route('attendance.store') }}', {
            employee_id: employee_id, 
            contract_id: contract_id, 
            work_package_id: $('#workPackageSelect').val(), 
            date: $('#date').val(), 
            attendance: attendance,
            from: from,
            to: to,
            ceremony: ceremony,
            late: late
        }, function(data, status) {
            if (status == 'success') {
                oTable.api().cell(idx, 10).nodes().to$().find('.stateStatus').html("<img src='/img/checked.png'>");
            } else {
                oTable.api().cell(idx, 10).nodes().to$().find('.stateStatus').html("<img src='/img/cancel.png'>");
            }
        });
    }

    $('#findData').click(function() {
        reloadTable();
    });

    function reloadTable(){
        oTable.api().ajax.reload();
    }
    
</script>

@include('admin.attendance.js.selectFilter')

@stop