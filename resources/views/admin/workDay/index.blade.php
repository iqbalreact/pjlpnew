@extends('adminlte::page')

@section('title', 'Hari Kerja | '.env('APP_NAME'))

@section('content_header')
    <h1>Hari Kerja</h1>

    {{ Breadcrumbs::render('workDay') }}
@stop

@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">List hari kerja</h3>
                    <a href="{{ route('workDay.create') }}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah</a>
                </div>
                <div class="box-body">
                    <table id="occupation-table" class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Tahun</th>
                                <th>Jan</th>
                                <th>Feb</th>
                                <th>Mar</th>
                                <th>Apr</th>
                                <th>Mei</th>
                                <th>Jun</th>
                                <th>Jul</th>
                                <th>Agu</th>
                                <th>Sep</th>
                                <th>Okt</th>
                                <th>Nov</th>
                                <th>Des</th>
                                <th>Action</th>
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
        var oTable = $('#occupation-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 1, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.workDay') !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'year', name: 'year', searchable:'true', orderable: 'true'},
                { data: 'january', name: 'january', searchable:'false', orderable: 'false'},
                { data: 'february', name: 'february', searchable:'false', orderable: 'false'},
                { data: 'march', name: 'march', searchable:'false', orderable: 'false'},
                { data: 'april', name: 'april', searchable:'false', orderable: 'false'},
                { data: 'may', name: 'may', searchable:'false', orderable: 'false'},
                { data: 'june', name: 'june', searchable:'false', orderable: 'false'},
                { data: 'july', name: 'july', searchable:'false', orderable: 'false'},
                { data: 'august', name: 'august', searchable:'false', orderable: 'false'},
                { data: 'september', name: 'september', searchable:'false', orderable: 'false'},
                { data: 'october', name: 'october', searchable:'false', orderable: 'false'},
                { data: 'november', name: 'november', searchable:'false', orderable: 'false'},
                { data: 'december', name: 'december', searchable:'false', orderable: 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop