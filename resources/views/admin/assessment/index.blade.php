@extends('adminlte::page')

@section('title', 'Penilaian Kinerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Penilaian</h1>

    {{ Breadcrumbs::render('assessment') }}
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
                            <label for="inputMonth" class="col-sm-2 control-label">Bulan dan Tahun @include('components.required')</label>
    
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
                    <h3 class="box-title">Input Penilaian</h3>
                </div>
                <div class="box-body">
                    <table id="employee-table" class="table" width="100%">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Id</th>
                                <th>NIPJ</th>
                                <th>Name</th>
                                <th>Tingkat Penyelesaian Pekerjaan</th>
                                <th>Waktu Penyelesaian Pekerjaan</th>
                                <th>Kualitas Hasil Pekerjaan</th>
                                <th>Kepatuhan Dalam Menjalankan Kewajiban</th>
                                <th>Kepatuhan terhadap Larangan</th>
                                <th>Aksi</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                    </table> 
                    
                    <div class="row">
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary btn-block" id="btn-submit">Bulk Insert Penilaian</button>
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
        format: 'MM yyyy',
        viewMode: "months", 
        minViewMode: "months"
    });    

    $( '.datepicker' ).datepicker( 'setDate', today );

    var oTable = $('#employee-table').dataTable({
        processing: true,
        serverSide: true,
        responsive: true,
        order: [[ 2, 'asc' ]],
        deferRender:    true,
        ajax: {
            url: '{!! route('fetch.assessment') !!}',
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
            },
            {
                'targets': [4, 5, 6, 7, 8],
                'className': 'text-center'
            }
        ],
        'select': {
            'style': 'multi'
        },
        columns: [
            { data: 'id', name: 'id' },
            { data: 'id', name: 'id', class:'hide' },
            { data: 'employee_nipj', name: 'employee.nipj', searchable:'true'},
            { data: 'employee_name', name: 'employee.name', searchable:'true'},
            { data: 'work_completion_rate', name: 'work_completion_rate', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'work_completion_time', name: 'work_completion_time', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'work_quality', name: 'work_quality', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'obidence_on_obligation', name: 'obidence_on_obligation', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'obidence_on_rule', name: 'obidence_on_rule', searchable:'false', orderable:'false', "width": "10%"},
            { data: 'save', name: 'save', searchable:'false', orderable:'false', "width": "5%"},
            { data: 'status', name: 'status', searchable:'false', orderable:'false', "width": "5%"}
        ]
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
        
        var employee_id = data.employee.id;
        var contract_id = data.id;
        var work_completion_rate    = oTable.api().cell(idx,4).nodes().to$().find('select').val();
        var work_completion_time    = oTable.api().cell(idx,5).nodes().to$().find('select').val();
        var work_quality            = oTable.api().cell(idx,6).nodes().to$().find('select').val();
        var obidence_on_obligation  = oTable.api().cell(idx,7).nodes().to$().find('select').val();
        var obidence_on_rule        = oTable.api().cell(idx,8).nodes().to$().find('select').val();
               
        oTable.api().cell(idx, (10)).nodes().to$().find('.stateStatus').html("<img src='/img/spinner.gif'>");

        $.post('{{ route('assessment.store') }}', {
            employee_id: employee_id, 
            contract_id: contract_id, 
            work_package_id: $('#workPackageSelect').val(), 
            date: $('#date').val(), 
            work_completion_rate: work_completion_rate,
            work_completion_time: work_completion_time,
            work_quality: work_quality,
            obidence_on_obligation: obidence_on_obligation,
            obidence_on_rule: obidence_on_rule
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