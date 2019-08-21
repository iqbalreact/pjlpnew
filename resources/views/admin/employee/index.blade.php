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

        var ctx = $('#religionChart');
        window.myDoughnut = new Chart(ctx, config);

        var ctx = $('#genderChart');
        window.myDoughnut = new Chart(ctx, config);

        var ctx = $('#bankChart');
        window.myDoughnut = new Chart(ctx, config);
    });

    var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };

    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                ],
                backgroundColor: [
                    'red',
                    'blue',
                    'orange',
                    'green',
                    'yellow',
                ],
                label: 'Dataset 1'
            }],
            labels: [
                'Red',
                'Orange',
                'Yellow',
                'Green',
                'Blue'
            ]
        },
        options: {
            showAllTooltips: true,
            responsive: true,
            legend: {
                position:'left',
                fullWidth: false,
                fontSize: 11
                // display: false
            },
            tooltips: {
                enabled: true
            },
            title: {
                display: true,
                text: 'Chart.js Doughnut Chart'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };

    
</script>
@stop