<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            .default-table {
                border-collapse: separate;
                border-spacing: 10px 0;
            }
          
            /* td {
                padding: 10px 0;
            } */
        </style>        
    </head>
    <body>

        <div class="row">
            <div class="col-xs-2">
                    <img src={{ public_path('/img/pontianak-logo.svg') }} class="img-responsive" width="150px">
            </div>

            <div class="col-xs-10 text-center">
                <p>
                    <h4>PEMERINTAH KOTA PONTIANAK</h4>
                </p>
                <p>
                    <h3>{{ strtoupper($data->skpd->name) }}</h3>
                </p>
                <p>
                    {{ $data->skpd->address }} Telp: {{ $data->skpd->phone_number }} Fax: {{ $data->skpd->fax }} Pontianak {{ $data->skpd->postal_code }}  Website: {{ $data->skpd->website}}</td>
                </p>
            </div>
        </div>

        <hr>

        <div class="row text-center">
            <h4> <b>BERITA ACARA HASIL PEMERIKSAAN ADMINISTRASI</b> </h4>
            <p>Nomor: {!! $data->number !!}</p>
        </div>
        <br>
        <div class="row">
            <p>
                {!! $date !!}
            </p>
        </div>
        <div class="row">
            <table class="default-table">
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionary->name ?? '' }}</td>
                </tr>
                <tr>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionary->nip ?? '' }}</td>
                </tr>
                <tr>
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>Pejabat Pemeriksa Hasil Pekerjaan {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->functionary->address ?? '' }}</td>
                </tr>
            </table>
        </div>

        <br>
        <div class="row">
            {!! $data->section_1 !!}
        </div>

        <div class="row">
            <table class="default-table">
                <tr>
                    <td>Nama Kegiatan</td>
                    <td>:</td>
                    <td>{{ $data->contract->activity->name }}</td>
                </tr>
                <tr>
                    <td>Nama Pekerjaan</td>
                    <td>:</td>
                    <td>{{ $data->contract->workPackage->name }}</td>
                </tr>
                <tr>
                    <td>Data Penyedia</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td>Nilai Kontrak</td>
                    <td>:</td>
                    <td>Rp. {{ $totalContract }}</td>
                </tr>
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->employee->name ?? '' }}</td>
                </tr>
                <tr>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->employee->nipj ?? '' }}</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->employee->address ?? '' }}</td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row">
            {!! $data->section_2 !!}
        </div>
        
        <br>
        <div class="row">
            <table width="100%" class="table table-bordered">
                <tr class="text-center">
                    <td>No</td>
                    <td>Item yang diperiksa</td>
                    <td>Sesuai</td>
                    <td>Tidak Sesuai</td>
                    <td>Keterangan</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Daftar Hadir Kerja Harian</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Daftar Hadir Apel Pagi</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>BA Hasil Pemeriksaan Pekerjaan oleh PPKOM</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Penilaian Prestasi Kerja Bulanan</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>BA Serah Terima Pekerjaan</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>

        <br>
        <div class="row">
            {!! $data->section_3 !!}
        </div>

        <br>
        <div class="row">
            <div class="col-xs-offset-6 col-xs-6 text-center">
                Diperiksa oleh <br>
                Pejabat Pemeriksa Hasil Pekerjan <br>
                {{ $data->skpd->name }} Kota Pontianak <br>
                <br>
                <br>
                <br>
                {{ $data->functionary->name }} <br>
                NIP. {{ $data->functionary->name }}
            </div>
        </div>
    </body>
</html>