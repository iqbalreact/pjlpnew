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
@stop

@section('css')
    {{-- <link rel="stylesheet" href="/css/admin_custom.css"> --}}
@stop

@section('js')
    {{-- <script> console.log('Hi!'); </script> --}}
@stop