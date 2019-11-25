@extends('adminlte::page')

@section('title', 'Penggajian | '.env('APP_NAME'))

@section('content_header')
    <h1>Penggajian</h1>

    {{ Breadcrumbs::render('payroll') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-primary" id="inputAttendace">
                <div class="box-header">   
                    <h3 class="box-title">Input Gaji</h3>


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
                                    <label for="inputMonth" class="col-sm-4 control-label">Periode @include('components.required')</label>
            
                                    <div class="col-sm-8">
                                        {!! Form::text('date', '', ['id' => 'date', 'class' => 'form-control datepicker', 'placeholder'=> __('Bulan dan Tahun'), 'autocomplete' => 'off'] ) !!}
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
                                <th style="width:150px;">NIPJ</th>
                                <th style="width:300px;">Nama</th>
                                <th>Hari Kerja</th>
                                <th>Total Absen</th>
                                <th>Status Absensi</th>
                                <th>Penilaian Kerja</th>
                                <th>Aksi</th>
                                <th>Detail</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                    </table> 
                    
                    <div class="row">
                        <div class="col-md-3">
                            <button type="button" class="btn btn-success btn-lg btn-block" id="btn-submit"><i class="fa fa-check"></i> Penggajian Massal</button>
                        </div>
                        <div class="col-md-9">
                            <div class="callout callout-default">
                                <h4>Aturan penggajian massal</h4>
                                <ul>
                                    <li>Penggajian massal hanya bisa dilakukan dalam satu halaman data.</li>
                                    <li>Centang kotak pada kolom paling kiri di setiap baris data, atau di bagian kiri atas untuk mencentang semua kotak sebagai penanda data yang akan diproses.</li>
                                    <li>Tekan tombol "Penggajian Massal" setelah data ditandai.</li>
                                </ul>
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
        format: 'MM yyyy',
        viewMode: "months", 
        minViewMode: "months"
    });    

    $( '.datepicker' ).datepicker( 'setDate', today );

    var oTable = $('#employee-table').dataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        deferRender:    true,
        ajax: {
            url: '{!! route('fetch.payroll') !!}',
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
            { data: 'total_day', name: 'total_day', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'total_attendance', name: 'total_attendance', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'checkAttendance', name: 'checkAttendance', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'assessment', name: 'assessment', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'save', name: 'save', searchable:'false', orderable:'false', "width": "5%"},
            { data: 'detail', name: 'detail', searchable:'false', orderable:'false', "width": "5%"},
            { data: 'status', name: 'status', searchable:'false', orderable:'false', "width": "5%"}
        ]
    });

    // Handle form submission event
    $('#btn-submit').on('click', function(e){
        
        var rows_selected = oTable.api().column(0).checkboxes.selected();
        
        $.each(rows_selected, function(idx, rowId){
 
            var idx =  oTable.api().row( '#row-'+rowId ).index(); 
            var data = oTable.api().row( '#row-'+rowId ).data();
            
            submitPayroll(idx, data);

            $('#row-'+rowId+' input[type="checkbox"]:checked').trigger('click');
        });
    });

    $('#employee-table tbody').on( 'click', 'button', function () {

        var idx =  oTable.api().row( $(this).parents('tr') ).index();
        var data = oTable.api().row( $(this).parents('tr') ).data();

        submitPayroll(idx, data);
    } );

    function submitPayroll(idx, data) {
        
        var employee_id = data.employee.id;
        var contract_id = data.id;
               
        oTable.api().cell(idx, (10)).nodes().to$().find('.stateStatus').html("<img src='/img/spinner.gif'>");

        $.post('{{ route('payroll.store') }}', {
            employee_id: employee_id, 
            contract_id: contract_id, 
            work_package_id: $('#workPackageSelect').val(), 
            date: $('#date').val()
        }, function(data, status) {
            if (data.status === false) {
                oTable.api().cell(idx, 10).nodes().to$().find('.stateStatus').html("<img src='/img/cancel.png'>");
            } else if (status == 'success') {
                oTable.api().cell(idx, 10).nodes().to$().find('.stateStatus').html("<img src='/img/checked.png'>");
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