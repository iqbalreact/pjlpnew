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
	    			<h4>Hai, Syamsul Akbar</h4>
	    			<p class="lead">Silahkan pilih salah satu tombol dibawah ini untuk mulai beraktifitas di aplikasi PJLP Pontianak. Selamat bekerja, semoga lancar.</p>
	    			<div>
	    				<a href="#" class="btn btn-default"><i class="fa fa-plus"></i> Tambah PJLP Baru</a>
	    				<a href="#" class="btn btn-default"><i class="fa fa-plus"></i> Tambah Kontrak Kerja</a>
	    				<a href="#" class="btn btn-default"><i class="fa fa-check"></i> Absensi Pekerja</a>
	    			</div>    				
    			</div>
    		</div>

    		<div class="box box-default">
    			<div class="box-header">
    				<h3 class="box-title">RINGKASAN ANGKA</h3>
    			</div>
    			<div class="box-body" style="padding-top:0;">
					<div class="col-md-4">
						<h1>30</h1>
						<span>PJLP terdaftar</span>
					</div>
					<div class="col-md-4">
						<h1>28</h1>
						<span>Kontrak Aktif</span>
					</div>   
					<div class="col-md-4">
						<h1>2</h1>
						<span>Non Aktif</span>
					</div>   
					<div class="col-md-4">
						<h1>5</h1>
						<span>Program</span>
					</div>   
					<div class="col-md-4">
						<h1>10</h1>
						<span>Kegiatan</span>
					</div>   
					<div class="col-md-4">
						<h1>20</h1>
						<span>Paket Pekerjaan</span>
					</div>    				
    			</div>
    		</div>

    	</div>

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
    							<dd>Jl. Rahadi Oesman No.3 Pontianak Kota</dd>
    							<dt>No. Telpon</dt>
    							<dd>0561 770888</dd>
    							<dt>No. Fax</dt>
    							<dd>0561 770888</dd>
    							<dt>Kode Pos</dt>
    							<dd><span class="text-danger">belum tersedia</span></dd>
    							<dt>Email</dt>
    							<dd>diskominfo@pontianakkota.go.id</dd>
    							<dt>Website</dt>
    							<dd>www.pontianakkota.go.id</dd>
    						</dl>
    						<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> lengkapi data profil</a>
    					</div>
    					<div class="col-md-6">
    						<h4>Daftar Pejabat</h4>
							<dl>
							  <dt>Pengguna Anggaran</dt>
							  <dd>Ir. Uray Indra Mulya</dd>
							  <dt>Pejabat Pembuat Komitmen</dt>
							  <dd>Syamsul Akbar, M.Eng, M.Sc</dd>
							  <dt>Pejabat Pelaksana Teknis Kegiatan</dt>
							  <dd>Sri Wulani Elida, M.Eng</dd>
							  <dt>Pejabat Pemeriksa Hasil Pekerjaan</dt>
							  <dd><span class="text-danger">belum tersedia</span></dd>
							</dl>
							<a href="#" class="btn btn-default"><i class="fa fa-pencil"></i> lengkapi data pejabat</a>
    					</div>
    				</div>


   				
    			</div>

    		</div>
    	</div>   
    </div>

    <div class="row">
    	<div class="col-md-12">
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