<html>
    <head>
        <style type="text/css" media="all">
            .header {
                text-align: center;
                line-height: 0.1;
            }

            .title {
                font-size: 18px;
                font-weight: bold;
            }

            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Create two equal columns that sits next to each other */
            .column {
                float: left;
                width: 50%;
                padding: 10px;
            }

            .sign-area {
                text-align: center;
                line-height: 0.1;
            }
            
        </style>
    </head>
    <body>

        <table class="header">
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
        </table>
        

        <hr>

        <div class="header">
            <p class="title">BERITA ACARA PEMERIKSAAN PEKERJAAN</p>
            <p>Nomor: {!! $data->number !!}</p>
        </div>

        {!! $data->section_1 !!}

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
                <td>{{ $data->functionary->occupations->first()->name ?? '' }}</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td>{{ $data->functionary->address ?? '' }}</td>
            </tr>
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
                <td>{{ $data->functionaryPPTK->occupations->first()->name ?? '' }}</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td>{{ $data->functionaryPPTK->address ?? '' }}</td>
            </tr>
        </table>

        
        {!! $data->section_2 !!}

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

        {!! $data->section_3 !!}

        <div class="row">
            <div class="column sign-area">
                <p>PIHAK KEDUA</p>
                <br>
                <p>Penyedia Jasa</p>
                <p>{{ $data->position->name ?? '' }}</p>
                <br><br><br><br>
                <p>{{ $data->employee->name }}</p>
                <p>NIK: {{ $data->employee->nipj }}</p>
            </div>
            <div class="column sign-area">
                <p>Yang Memeriksa</p>
                <br>
                <div style="text-align:left">
                    <p>1. {{ $data->functionary->name }}  ........<p>
                    <p>2. {{ $data->functionaryPPTK->name }} ........</p>
                </div>
            </div>
        </div>
    </body>
</html>