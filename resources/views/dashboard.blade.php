{{-- resources/views/admin/dashboard.blade.php --}}

@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Dashboard</h1>

    {{ Breadcrumbs::render('dashboard') }}
@stop

@section('content')
    <div class="row">
    	<div class="col-md-6">
    		<div class="box box-default">
    			<div class="box-header">
    				<h3 class="box-title">DINAS KOMUNIKASI DAN INFORMATIKA</h3>
    			</div>
    			<div class="box-body">
					<h4>Hai, {{  \Auth::user()->name }}</h4>
					{{-- <h4>Hai, {{  \Auth::user()->roles->pluck('name') }}</h4> --}}
	    			<p class="lead">Silahkan pilih salah satu tombol dibawah ini untuk mulai beraktifitas di aplikasi PJLP Pontianak. Selamat bekerja, semoga lancar.</p>
	    			<div>
						<a href="{{ route('employee.create') }}" class="btn btn-default"><i class="fa fa-plus"></i> Tambah PJLP Baru</a>
	    				<a href="{{ route('contract.create') }}" class="btn btn-default"><i class="fa fa-plus"></i> Tambah Kontrak Kerja</a>
	    				<a href="{{ route('attendance.create') }}" class="btn btn-default"><i class="fa fa-check"></i> Absensi Pekerja</a>
	    			</div>
    			</div>
    		</div>

			@if(\Auth::user()->getRoles() != 'superadmin')
				<div class="box box-default">
					<div class="box-header">
						<h3 class="box-title">RINGKASAN ANGKA</h3>
					</div>
					<div class="box-body" style="padding-top:0;">
						<div class="col-md-4">
							<h1>{{ $countEmployee }}</h1>
							<span>PJLP terdaftar</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countContract }}</h1>
							<span>Kontrak Aktif</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countContractNonActive }}</h1>
							<span>Non Aktif</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countProgram }}</h1>
							<span>Program</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countActivity }}</h1>
							<span>Kegiatan</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countWorkPackage }}</h1>
							<span>Paket Pekerjaan</span>
						</div>
					</div>
				</div>
			@endif
    	</div>

		@if(\Auth::user()->getRoles() != 'superadmin')
			<div class="col-md-6">
				<div class="box box-default">
					<div class="box-header">
						<h3 class="box-title">CEK KELENGKAPAN INFORMASI</h3>
					</div>
					<div class="box-body">
						<p>Silahkan lengkapi data dibawah ini agar semua fitur yang tersedia dapat berjalan dengan baik.</p>

						<div class="row">
							<div class="col-md-6">
								<h4>Profil SKPD</h4>
								<dl>
									<dt>Alamat Lengkap</dt>
									<dd>{!! $skpd->address ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>No. Telpon</dt>
									<dd>{!! $skpd->phone_number ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>No. Fax</dt>
									<dd>{!! $skpd->fax ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Kode Pos</dt>
									<dd>{!! $skpd->post_code ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Email</dt>
									<dd>{!! $skpd->email ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Website</dt>
									<dd>{!! $skpd->website ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
								</dl>
								<a href="{{ route('skpd.edit', $skpd->id) }}" class="btn btn-default"><i class="fa fa-pencil"></i> Lengkapi data profil</a>
							</div>
							<div class="col-md-6">
								<h4>Daftar Pejabat</h4>
								<dl>
									<dt>Pengguna Anggaran</dt>
									<dd>{!! $pa->functionary->name ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Pejabat Pembuat Komitmen</dt>
									<dd>{!! $ppkom->functionary->name ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Pejabat Pelaksana Teknis Kegiatan</dt>
									<dd>{!! $pptk->functionary->name ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
									<dt>Pejabat Pemeriksa Hasil Pekerjaan</dt>
									<dd>{!! $pphp->functionary->name ?? '<span class="text-danger">belum tersedia</span>' !!}</dd>
								</dl>
								<a href="{{ route('occupation.create') }}" class="btn btn-default"><i class="fa fa-pencil"></i> Lengkapi data pejabat</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		@else
			<div class="col-md-6">
				<div class="box box-default">
					<div class="box-header">
						<h3 class="box-title">RINGKASAN ANGKA</h3>
					</div>
					<div class="box-body" style="padding-top:0;">
						<div class="col-md-4">
							<h1>{{ $countEmployee }}</h1>
							<span>PJLP terdaftar</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countContract }}</h1>
							<span>Kontrak Aktif</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countContractNonActive }}</h1>
							<span>Non Aktif</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countProgram }}</h1>
							<span>Program</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countActivity }}</h1>
							<span>Kegiatan</span>
						</div>
						<div class="col-md-4">
							<h1>{{ $countWorkPackage }}</h1>
							<span>Paket Pekerjaan</span>
						</div>
					</div>
				</div>
			</div>
		@endif
	</div>

	<div class="row">
		<div class="col-xs-12">
			<div class="box box-default">
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
			</div>
		</div>
@stop

@section('css')
    {{-- <link rel="stylesheet" href="/css/admin_custom.css"> --}}
@stop

@section('js')
<script>
$(function(){
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
})


</script>
@stop
