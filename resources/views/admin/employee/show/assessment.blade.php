<style type="text/css">
	.dl-horizontal dt {
		width:50px !important;
	}
	.dl-horizontal dd {
		margin-left: 70px !important;
	}
</style>

<table id="assessment-table" class="table" width="100%">
	<thead>
		<tr>
			<th>Id</th>
			<th>Bulan</th>
			<th>Tahun</th>
			<th>TPP</th>
			<th>WPP</th>
			<th>KHP</th>
			<th>KMK</th>
			<th>KTL</th>
		</tr>
	</thead>
</table>

<div class="row">
	<div class="col-md-6">
		<dl class="dl-horizontal">
			<dt>TPP</dt>
			<dd>Tingkat Penyelesaian Pekerjaan</dd>
			<dt>WPP</dt>
			<dd>Waktu Penyelesaian Pekerjaan</dd>
			<dt>KHP</dt>
			<dd>Kualitas Hasil Pekerjaan</dd>
		</dl>
	</div>
	<div class="col-md-6">
		<dl class="dl-horizontal">
			<dt>KMK</dt>
			<dd>Kepatuhan Menjalankan Kewajiban</dd>
			<dt>KTL</dt>
			<dd>Kepatuhan Terhadap Larangan</dd>
		</dl>		
	</div>
</div>	

@section('js2')
<script>
    $(function() {
		var oTable = $('#assessment-table').dataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 0, 'desc' ]],
            deferRender:    true,
            ajax: {
                url: '{!! route('fetch.assessmentByEmployeeId') !!}',
                data: function (d) {
                    d.employee_id = "{{ $data->id }}"
                }
            },
            columns: [
                { data: 'id', name: 'id', class:'hide' },
                { data: 'monthTransform', name: 'monthTransform', searchable:'true'},
                { data: 'year', name: 'year', searchable:'true'},
                { data: 'work_completion_rate', name: 'work_completion_rate', searchable:'true'},
                { data: 'work_completion_time', name: 'work_completion_time', searchable:'true'},
                { data: 'work_quality', name: 'work_quality', searchable:'true'},
                { data: 'obidence_on_obligation', name: 'obidence_on_obligation', searchable:'true'},
                { data: 'obidence_on_rule', name: 'obidence_on_rule', searchable:'true'},
            ]
        });
	});
</script>
@endsection