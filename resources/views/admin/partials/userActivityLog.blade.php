<table id="activity-table" class="table" width="100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Tanggal</th>
            <th>Aksi</th>
            <th>Objek</th>
            <th width="15%">Detail</th>
        </tr>
    </thead>
</table>         

@section('js')
<script>
    $(function() {
        var oTable = $('#activity-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.activity', ['causer_id' => $causer_id, 'models' => $models ]) !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'created_at', name: 'created_at', searchable:'true'},
                { data: 'description', name: 'description', searchable:'true'},
                { data: 'subject_name', name: 'subject_name', searchable:'false', 'orderable': 'false'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop