<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            table {
                border-collapse: separate;
                border-spacing: 10px 0;
            }

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
            <h4> <b>BERITA ACARA SERAH TERIMA PEKERJAAN</b> </h4>
            <p>Nomor: {!! $data->number !!}</p>
        </div>
        <br>
        <div class="row">
            <p>
                {!! $date !!}
            </p>
        </div>
        <div class="row">
            <table>
                <tr>
                    <td>1</td>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionary->name ?? '' }}</td>
                </tr>
                <tr>
                    <td rowspan="4"></td>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionary->nip ?? '' }}</td>
                </tr>
                <tr>
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->functionary->address ?? '' }}</td>
                </tr>
                <tr>
                    <td colspan="3">Selaku <b>PIHAK PERTAMA</b></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Nama Penyedia Jasa</td>
                    <td>:</td>
                    <td>{{ $data->functionary2->name }}</td>
                </tr>
                <tr>
                    <td rowspan="4"></td>
                    <td>NIK</td>
                    <td>:</td>
                    <td>{{ $data->functionary2->nip ?? '' }}</td>
                </tr>
                <tr>
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>Kuasa Pengguna Anggaran / Pengguna Anggaran {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->functionary2->address }}</td>
                </tr>
                <tr>
                    <td colspan="3">Selaku <b>PIHAK KEDUA</b></td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row">
            {!! $data->section_2 !!}
        </div>
        <br>
        <div class="row">
            {!! $data->section_3 !!}
        </div>
        <br>
        <div class="row">
            {!! $data->section_4 !!}
        </div>

        <div class="row text-center">
            <div class="col-xs-6">
                <div class="row">
                    PIHAK PERTAMA <br>
                    Pejabat Pembuat Komitmen <br>
                    {{ $data->skpd->name }} <br>
                    Kota Pontianak
                </div>

                <div class="row">
                    <br>
                </div>

                <div class="row">
                    {{ $data->functionary->name }} <br>
                    NIP: {{ $data->functionary->nip }}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="row">
                    PIHAK KEDUA <br>
                    Pengguna Anggaran <br>
                    {{ $data->skpd->name }} <br>
                    Kota Pontianak
                </div>
                <div class="row">
                    {{-- <br><br><br><br> --}}
                </div>
                <div class="row">
                    {{ $data->functionary2->name }} <br>
                    NIK: {{ $data->functionary2->nip }}
                </div>
            </div>
        </div>
    </body>
</html>