@extends('adminlte::page')

@section('title', 'PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>PJLP</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">

            <div class="box box-default">
                <div class="box-header">
                    <h3 class="box-title">List PJLP</h3>
                    <div class="pull-right">
                        <a href="{{ route('employee.create') }}" class="btn btn-success"><i class="fa fa-plus"></i> Tambah PJLP Baru</a>                        
                        <a href="{{ route('export.employee') }}" class="btn btn-danger"><i class="fa fa-download"></i> Export Data</a>
                    </div>

                    @if(\Auth::user()->getRoles() == 'superadmin')
                        <div class="form-horizontal" style="margin-top:20px;">
                            <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
                                <!-- <label class="col-md-1 control-label">SKPD @include('components.required')</label> -->
                    
                                <div class="col-md-5">
                                    <select name="skpd_id" id="skpdSelect" class="form-control" required></select>
                                </div>

                                    <button
                                        id="findData" 
                                        type="button" 
                                        class="btn btn-primary ">
                                            <i class="fa fa-filter"></i> Filter
                                    </button>
                                    <button class="btn btn-default" id="clearSkpd" type="button">
                                        <i class="fa fa-close"></i> Reset
                                    </button>                                    

                            </div>

                        </div>

                    @endif


                </div>
                <div class="box-body">
                    <table id="employee-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th></th>
                                <th style="width:100px;">NIPJ</th>
                                <th>Name</th>
                                <th>Posisi</th>
                                <th>Telepon</th>
                                <th style="width: 140px;">Action</th>
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
        $(function() {
            $("#skpdSelect").select2({
                dropdownAutoWidth : true,
                width: '100%',
                placeholder: "Ketik atau pilih SKPD untuk menyaring data",
                ajax: {
                    url: "{{ route('select.skpd') }}",
                    dataType: 'json',
                    data: function (params) {
                        return {
                            q: params.term,
                        };
                    },
                    processResults: function (data) {

                        var res = data.map(function (item) {
                            return {id: item.id, text: item.name};
                        });
                        
                        return {
                            results: res
                        };
                    }
                }
            });
        });

        var oTable = $('#employee-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: {
                url: '{!! route('fetch.employee') !!}',
                data: function (d) {
                    d.skpdId = $('#skpdSelect').val()
                }
            },
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'avatar', name: 'avatar', searchable:'false', orderable: 'false'},
                { data: 'nipj', name: 'nipj', searchable:'true'},
                { data: 'employee_link', name: 'name', searchable:'true'},
                { data: 'position', name: 'position', searchable:'false',orderable: 'false'},
                { data: 'phone_number', name: 'phone_number', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        $('#clearSkpd').click(function() {
            $('#skpdSelect').val(null).trigger('change');
            reloadTable();    
        });
   
        function reloadTable(){
            oTable.api().ajax.reload();
        }

        $('#findData').click(function() {
            reloadTable();
        });
    });


    var colors = ['red', 'blue', 'orange', 'green', 'yellow', 'purple'];

    $.ajax({
        url: "{{ route('chart.bank') }}",
        success: function (result) {

            var data    = [];
            var labels  = [];
            // var

            result.forEach(function(item){
                data.push(item.total);
                labels.push(item.bank_name);
            });

            var ctx = $('#bankChart');
            renderChart('Chart Bank', ctx, data, labels);
        }
    });

    $.ajax({
        url: "{{ route('chart.gender') }}",
        success: function (result) {

            var data    = [];
            var labels  = [];

            result.forEach(function(item){
                data.push(item.total);
                labels.push(item.gender);
            });

            var ctx = $('#genderChart');
            renderChart('Chart Gender', ctx, data, labels);
        }
    });

    $.ajax({
        url: "{{ route('chart.religion') }}",
        success: function (result) {

            var data    = [];
            var labels  = [];

            result.forEach(function(item, i){
                data.push(item.total);
                labels.push(item.religion);
            });

            var ctx = $('#religionChart');
            renderChart('Chart Agama', ctx, data, labels);
        }
    });

    function renderChart(title, ctx, data, labels) {
        
        var configGender = {
            type: 'pie',
            data: {
                datasets: [{
                    data: data,
                    backgroundColor: colors
                }],
                labels: labels
            },
            options: {
                showAllTooltips: true,
                responsive: true,
                legend: {
                    position:'left',
                    fullWidth: false,
                    fontSize: 11
                },
                tooltips: {
                    enabled: true
                },
                title: {
                    display: true,
                    text: title
                },
                animation: {
                    animateScale: true,
                    animateRotate: true
                }
            }
        };

        window.Pie = new Chart(ctx, configGender);
    }
</script>
@stop