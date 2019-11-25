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
            <p class="title">SURAT PERINTAH MULAI KERJA (SPMK)</p>
            <p>Nomor: {!! $data->number !!}</p>

            <p>Paket Pekerjaan: {{ $data->contract->workPackage->name  ?? '' }}</p>
        </div>

        <p>Yang bertanda tangan dibawah ini:</p>
        <table>
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
                <td>{{ $data->functionary->occupations->first()->name ?? '' }}</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td>{{ $data->functionary->address ?? '' }}</td>
            </tr>
        </table>

        <p>Selanjutnya disebut sebagai <b>Pejabar Pembuat Komitmen</b></p>

        {!! $data->section_1 !!}

        <table>
            <tr>
                <td>Nama</td>
                <td>:</td>
                <td>{{ $data->employee->name ?? '' }}</td>
            </tr>
            <tr>
                <td>NIP</td>
                <td>:</td>
                <td>{{ $data->functionary->nip ?? '' }}</td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td>{{ $data->functionary->address ?? '' }}</td>
            </tr>
        </table>

        <p>selanjutnya disebut sebagai <b>{{ $data->contract->workPackage->name  ?? '' }}</b></p>

        {!! $data->section_2 !!}

        <table>
            <tr>
                <td>1</td>
                <td>Macam Pekerjaan</td>
                <td>:</td>
                <td>{{ $data->work_type }}</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Tanggal mulai kerjan</td>
                <td>:</td>
                <td>{{ $data->contract->start_date }}</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Syarat - Syarat Pekerjaan</td>
                <td>:</td>
                <td>{{ $data->term }}</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Waktu Penyelesaian</td>
                <td>:</td>
                <td>{{ $data->period }}</td>
            </tr>
            <tr>
                <td>5</td>
                <td>Denda</td>
                <td>:</td>
                <td>{{ $data->fine }}</td>
            </tr>
        </table>

        <p class="header"> Pontianak, {{ $data->date }} </p>

        <div class="row">
            <div class="column sign-area">
                <p>{{ $data->skpd->name }}</p>
                <p>Selaku Pejabat Pembuat Komitmen</p>
                <br><br><br><br>
                <p>{{ $data->functionary->name ?? '' }}</p>
                <p>NIP: {{ $data->functionary->nipj }}</p>
            </div>
            <div class="column sign-area">
                <p>Untuk dan atas nama</p>
                <br>
                <p>Penyedia Jasa</p>
                <p>{{ $data->position->name ?? '' }}</p>
                <br><br><br><br>
                <p>{{ $data->employee->name }}</p>
                <p>NIK: {{ $data->employee->nipj }}</p>
            </div>
        </div>
    </body>
</html>