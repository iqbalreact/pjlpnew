<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            hr.garis-tebal {
                border: 1px solid black !important;
            }
            hr.garis-tipis {
                border-top: 1px solid black !important;
            }
            table {
                border-collapse: separate;
                border-spacing: 10px 0;
            }
            .justify-content-center{
                display: flex !important;
                justify-content:center !important;
            }
            .pjlp-text-top{
                vertical-align: text-top !important;
            }
            .pjlp-table{
                padding-right:15px !important;
                padding-left:15px !important;
            }
            .pjlp-content{
                padding-right:30px !important;
                padding-left:30px !important;
            }
            .bold {
                font-weight: bold;
            }
            @page {
                margin-top: 15px !important;
                /* margin-left: 2.54cm !important;
                margin-right: 2.54cm !important;
                margin-bottom: 2.54cm !important; */
                /* margin: 15px 2.54cm 2.54cm !important; */
            }
            .ba-height-55 {
                line-height: 55% !important;
            }
            .ba-height-100 {
                line-height: 100% !important;
            }
            .ba-height-115 {
                line-height: 115% !important;
            }
            .no-marginTB {
                margin-top:0 !important;
                margin-bottom:0 !important;
            }
            .no-paddingTB {
                padding-top:0px !important;
                padding-bottom:0px !important;
            }
        </style>
    </head>
    <body>
        <div class="row no-marginTB">
            <div class="col-xs-2 no-paddingTB">
                {{-- <img src={{ public_path('/img/pontianak-logo.svg') }} class="img-responsive" width="150px" style="float:left !important;"> --}}
                <img src={{ public_path('/img/pontianak-logo.svg') }} class="img-responsive" width="100px" style="float:left !important;">
            </div>

            <div class="col-xs-10 text-center no-paddingTB" style="float:right !important;">
                {{-- <p class = "ba-height">
                    <h4 style="justify-content:center !important;">PEMERINTAH KOTA PONTIANAK</h4>
                </p>
                <p class = "ba-height">
                    <h3 style="justify-content:center !important;">{{ strtoupper($data->skpd->name) }}</h3>
                </p> --}}
                {{-- <p style = "justify-content:center !important;">
                    {{ $data->skpd->address }}&nbsp;&nbsp;Telp. {{ $data->skpd->phone_number }}&nbsp;&nbsp;&nbsp;Fax. {{ $data->skpd->fax }}&nbsp;&nbsp;&nbsp;Pontianak {{ $data->skpd->post_code }}<br>
                    Website: {{ $data->skpd->website}}&nbsp;&nbsp;&nbsp;E-mail: {{ $data->skpd->email}}
                </p> --}}
                <h4 class="ba-height-55" style="justify-content:center !important; letter-spacing: 1px !important;">PEMERINTAH KOTA PONTIANAK</h4>
                <h3 class="ba-height-55" style="justify-content:center !important;">{{ strtoupper($data->skpd->name) }}</h3>
                <div class="ba-height-100 no-marginTB no-paddingTB" style = "justify-content:center !important; font-size: 9pt !important;">
                    {{ $data->skpd->address }}&nbsp;&nbsp;Telp. {{ $data->skpd->phone_number }}&nbsp;&nbsp;&nbsp;Fax. {{ $data->skpd->fax }}&nbsp;&nbsp;&nbsp;Pontianak {{ $data->skpd->post_code }}
                </div>
                <div class="ba-height-100" style = "justify-content:center !important; font-size: 9pt !important;">
                    Website: {{ $data->skpd->website}}&nbsp;&nbsp;&nbsp;E-mail: {{ $data->skpd->email}}
                </div>
            </div>
        </div>

        <hr class="garis-tebal no-paddingTB" style="margin-top:4px !important; margin-bottom:10px !important;">
        {{-- <hr class="garis-tipis"> --}}

        <div class="row text-center pjlp-table">
            {{-- <h4><b>BERITA ACARA SERAH TERIMA PEKERJAAN</b></h4>
            <p>Nomor : {!! $data->number !!}</p> --}}
            <div class="ba-height-55 no-marginTB no-paddingTB" style = "justify-content:center !important;">
                <h4><b>BERITA ACARA SERAH TERIMA PEKERJAAN</b></h4>
            </div>
            <div class="ba-height-55" style = "justify-content:center !important;">
                Nomor : {!! $data->number !!}
            </div>
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            <p>
                {!! $date !!}
            </p>
        </div>
        <div class="row text-justify pjlp-content">
            <table>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top" width = "5%">1.</td>
                    <td class="pjlp-text-top" width = "21%">Nama</td>
                    <td class="pjlp-text-top" width = "1%">:</td>
                    <td class="pjlp-text-top">{{ $data->functionary->name ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td rowspan="4"></td>
                    <td class="pjlp-text-top">NIP</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->functionary->nip ?? '' }}</td>
                </tr>
                <tr class="pjlp-text-top ba-height-115">
                    <td class="pjlp-text-top">Jabatan</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                    {{-- <td>Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td> --}}
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Alamat</td>
                    <td class="pjlp-text-top">:</td>
                    {{-- Edited --}}
                    <td class="pjlp-text-top">{{ $data->skpd->address ?? '' }}, Pontianak</td>
                    {{-- --------------- --}}
                    {{-- <td>{{ $data->functionary->address ?? '' }}</td> --}}
                </tr>
                <tr>
                    <td colspan="3">Selaku <b>PIHAK PERTAMA</b></td>
                </tr>
                <tr>
                    <td class="pjlp-text-top">2.</td>
                    <td class="pjlp-text-top">Nama Penyedia Jasa</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->employee->name }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td rowspan="3"></td>
                    <td class="pjlp-text-top">NIK</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->employee->ktp }}</td>
                    {{-- <td>{{ $data->employee->nipj }}</td> --}}
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Alamat</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->employee->address }}</td>
                </tr>
                <tr>
                    <td colspan="3">Selaku <b>PIHAK KEDUA</b></td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_2 !!}
        </div>
        {{-- <br> --}}
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_3 !!}
        </div>
        {{-- <br><br><br><br><br><br><br> --}}
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_4 !!}
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            <div class="col-xs-6 text-center" style="float:left !important;">
                <p>PIHAK PERTAMA</p>
                <p>Pejabat Pembuat Komitmen</p>
                <p>{{ $data->skpd->name }} Kota Pontianak</p>
                {{-- <p><br><br></p>
                <p>{{ $data->functionary->name }}<br>NIP. {{ $data->functionary->nip }}</p> --}}
            </div>
            <div class="col-xs-1 text-center"></div>
            <div class="col-xs-5 text-center" style="float:right !important;">
                <p>PIHAK KEDUA</p>
                <p>Penyedia Jasa {{ $data->contract->position->positionCategory->name }}<br>Jasa {{ $data->contract->position->name }}</p>
                {{-- <p>{{ $data->employee->name }}<br>NIK. {{ $data->employee->ktp }}</p> --}}
            </div>
        </div>
        <p><br><br></p>
        <div class="row text-justify pjlp-content ba-height-115">
            <div class="col-xs-6 text-center" style="float:left !important;">
                <p>{{ $data->functionary->name }}<br>NIP. {{ $data->functionary->nip }}</p>
            </div>
            <div class="col-xs-1 text-center"></div>
            <div class="col-xs-5 text-center" style="float:right !important;">
                <p>{{ $data->employee->name }}<br>NIK. {{ $data->employee->ktp }}</p>
            </div>
        </div>
    </body>
</html>
