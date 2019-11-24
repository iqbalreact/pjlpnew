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
                <td rowspan="3"><img src={{ url('/img/pontianak-logo.svg') }} width="200px"></td>
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
            <p class="title">BERITA ACARA SERAH TERIMA PEKERJAAN</p>
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
                <td rowspan="4"></td>
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
                <td colspan="3">Selaku <b>PIHAK PERTAMA</b></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Nama Penyedia Jasa</td>
                <td>:</td>
                <td>{{ $data->employee->name }}</td>
            </tr>
            <tr>
                <td rowspan="3"></td>
                <td>NIK</td>
                <td>:</td>
                <td>XXX{{ $data->employee->nipj }}XXXX</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td>{{ $data->employee->address }}</td>
            </tr>
            <tr>
                <td colspan="3">Selaku <b>PIHAK PERTAMA</b></td>
            </tr>
        </table>

        
        {!! $data->section_2 !!}

        {!! $data->section_3 !!}

        {!! $data->section_4 !!}

        <div class="row">
            <div class="column sign-area">
                <p>PIHAK PERTAMA</p>
                <br>
                <p>Pejabat Pembuat Komitmen</p>
                <p>Dinas Komunikasi dan Informatika</p>
                <p>Kota Pontianak</p>
                <br><br><br><br>
                <p>{{ $data->functionary->name ?? '' }}</p>
                <p>NIP: {{ $data->functionary->nipj }}</p>
            </div>
            <div class="column sign-area">
                <p>PIHAK KEDUA</p>
                <br>
                <p>Penyedia Jasa </p>
                <br><br><br><br>
                <p>{{ $data->employee->name }}</p>
                <p>NIK: {{ $data->employee->nipj }}</p>
            </div>
        </div>
    </body>
</html>