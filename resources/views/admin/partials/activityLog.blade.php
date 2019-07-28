<table id="activitylog-table" class="table" width="100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Tanggal</th>
            <th>Aksi</th>
            <th>Oleh</th>
            <th width="15%">Detail</th>
        </tr>
    </thead>
</table>         

@section('js')
<script>
    $(function() {
        var oTable = $('#activitylog-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.activityLog', ['subject_id' => $subject_id, 'models' => $models ]) !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'created_at', name: 'created_at', searchable:'true'},
                { data: 'description', name: 'description', searchable:'true'},
                { data: 'causer_name', name: 'causer_name', searchable:'false', 'orderable': 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop