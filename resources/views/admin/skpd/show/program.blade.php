<table id="program-table" class="table" width="100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Kode Program</th>
            <th>Nama</th>
            <th width="15%">Action</th>
        </tr>
    </thead>
</table>         

@section('js2')
<script>
    $(function() {
        var oTable = $('#program-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.program', ['skpd_id' => $skpd_id]) !!}',
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'code', name: 'code', searchable:'true'},
                { data: 'name', name: 'name', searchable:'true'},
                { data: 'actions', name: 'actions', searchable: 'false', 'orderable': 'false', 'class': 'text-center'}
            ]
        });

        function reloadTable(){
            oTable.ajax.reload();
        }
    });
</script>
@stop