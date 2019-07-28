<table id="workPackage-table" class="table" width="100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Kode Paket Kerja</th>
            <th>Nama</th>
            <th width="15%">Action</th>
        </tr>
    </thead>
</table>         

@section('js2')
<script>
    $(function() {
        var oTable = $('#workPackage-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: '{!! route('fetch.workPackage', ['activity_id' => $activity_id]) !!}',
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