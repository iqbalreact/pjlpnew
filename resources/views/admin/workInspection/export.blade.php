<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            table {
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

        {{-- <table class="header">
            <tr width="20%">
                <td rowspan="3"><img src={{ public_path('/img/pontianak-logo.svg') }} width="200px"></td>
                <td>PEMERINTAH KOTA PONTIANAK</td>
            </tr>
            <tr>
                <td><h3>{{ $data->skpd->name }}</h3></td>
            </tr>
            <tr>
                <td>
                    {{ $data->skpd->address }} Telp: {{ $data->skpd->phone_number }} Fax: {{ $data->skpd->fax }} Pontianak {{ $data->skpd->postal_code }}  Website: {{ $data->skpd->website}}</td>
            </tr>
        </table> --}}
        

        <hr>

        <div class="row text-center">
            <h4> <b>BERITA ACARA PEMERIKSAAN PEKERJAAN</b> </h4>
            <p>Nomor: {!! $data->number !!}</p>
        </div>
        <br>
        <div class="row">
            {!! $data->section_1 !!}
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
                    <td rowspan="3"></td>
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
                <br>
                <tr>
                    <td>2</td>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionaryPPTK->name ?? '' }}</td>
                </tr>
                <tr>
                    <td rowspan="3"></td>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionaryPPTK->nip ?? '' }}</td>
                </tr>
                <tr>
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>Pejabat Pelaksana Teknik Kegiatan pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->functionaryPPTK->address ?? '' }}</td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row">
            {!! $data->section_2 !!}
        </div>
        <div class="row">
            <table>
                <tr>
                    <td>1</td>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->employee->name ?? '' }}</td>
                </tr>
                <tr>
                    <td rowspan="4"></td>
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
            {!! $data->section_3 !!}
        </div>

        <div class="row text-center">
            <div class="col-xs-6">
                <div class="row">
                    Penyedia Jasa <br>
                    {{ $data->position->name ?? '' }}
                </div>

                <div class="row">
                    <br><br><br><br>
                </div>

                <div class="row">
                    {{ $data->employee->name }} <br>
                    NIK: {{ $data->employee->nipj }}
                </div>
            </div>
            <div class="col-xs-6">
                <div class="row">
                    Yang Memeriksa
                </div>
                <div class="row">
                    <table>
                        <tr>
                            <td>1.</td>
                            <td>{{ $data->functionary->name }}</td>
                            <td>..........</td>
                        </tr>
                        <tr>
                            <td>2.</td>
                            <td>{{ $data->functionaryPPTK->name }}   </td>
                            <td>..........</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>