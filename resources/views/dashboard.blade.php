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
	    			<p class="lead">Silahkan pilih salah satu tombol dibawah ini untuk mulai beraktifitas di aplikasi PJLP Pontianak. Selamat bekerja, semoga lancar.</p>
	    			<div>
						<a href="{{ route('employee.create') }}" class="btn btn-default"><i class="fa fa-plus"></i> Tambah PJLP Baru</a>
	    				<a href="{{ route('contract.create') }}" class="btn btn-default"><i class="fa fa-plus"></i> Tambah Kontrak Kerja</a>
	    				<a href="{{ route('attendance.create') }}" class="btn btn-default"><i class="fa fa-check"></i> Absensi Pekerja</a>
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
		@endif 
    </div>
@stop

@section('css')
    {{-- <link rel="stylesheet" href="/css/admin_custom.css"> --}}
@stop

@section('js')
    {{-- <script> console.log('Hi!'); </script> --}}
@stop