@extends('adminlte::page')

@section('title', 'PJLP | '.env('APP_NAME'))

@section('content_header')
    <h1>PJLP</h1>

    {{ Breadcrumbs::render('employee') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Chart</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <canvas id="religionChart"></canvas>
                        </div>
                        <div class="col-md-4">
                            <canvas id="genderChart"></canvas>
                        </div>
                        <div class="col-md-4">
                            <canvas id="bankChart"></canvas>
                        </div>
                    </div>
                    {{-- <div class="row">
                        <div class="col-md-12">
                            <canvas id="stacked"></canvas>
                        </div>
                    </div> --}}
                </div>
            </div>
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
                                <th width="8%">Foto</th>
                                <th width="10%">NIPJ</th>
                                <th>Name</th>
                                <th>KTP</th>
                                <th>Telepon</th>
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
        var oTable = $('#employee-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.employee') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'avatar', name: 'avatar', searchable:'false', orderable: 'false'},
                { data: 'nipj', name: 'nipj', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'ktp', name: 'ktp', searchable:'true'},
                { data: 'phone_number', name: 'phone_number', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
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

    // var ctx = document.getElementById('chart');

    var myChart = new Chart(document.getElementById('stacked'), {
        type: 'bar',
        data: {
            labels: ['Gender', 'Bank'],
            datasets: [
            {
                label: ['Low', 'hight'],
                data: [67.8, 90],
                backgroundColor: '#D6E9C6',
            },
            {
                label: ['Low', 'hight'],
                data: [20.7, 0],
                backgroundColor: '#FAEBCC',
            },
            {
                label: ['Low', 'hight', 'very'],
                data: [11.4, 90],
                backgroundColor: '#EBCCD1',
            }
            ]
        },
        options: {
            scales: {
                xAxes: [{ stacked: true }],
                yAxes: [{ stacked: true }]
            }
        }
    });

    function renderChart(title, ctx, data, labels) {
        
        var configGender = {
            type: 'doughnut',
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

        window.PolarArea = new Chart.PolarArea(ctx, configGender);
    }
</script>
@stop