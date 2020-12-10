<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            table {
                border-collapse: separate;
                border-spacing: 10px 0;
            }

            .bold {
                font-weight: bold;
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
            hr.garis-tebal {
                border: 1px solid black !important;
            }
            @page {
                margin-top: 15px !important;
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
            .ba-height-180 {
                line-height: 180% !important;
            }
            .no-marginTB {
                margin-top:0 !important;
                margin-bottom:0 !important;
            }
            .no-paddingTB {
                padding-top:0px !important;
                padding-bottom:0px !important;
            }
            .no-padding-all td {
                padding:0px !important;
            }
        </style>
    </head>
    <body>

        <div class="row no-marginTB">
            <div class="col-xs-2 no-paddingTB">
                <img src={{ public_path('/img/pontianak-logo.svg') }} class="img-responsive" width="100px" style="float:left !important;">
            </div>

            <div class="col-xs-10 text-center no-paddingTB" style="float:right !important;">
                {{-- <p>
                    <h4 style="justify-content:center !important;">PEMERINTAH KOTA PONTIANAK</h4>
                </p>
                <p>
                    <h3 style="justify-content:center !important;">{{ strtoupper($data->skpd->name) }}</h3>
                </p>
                <p style = "justify-content:center !important;">
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

        <div class="row text-center pjlp-table">
            {{-- <h4> <b>BERITA ACARA PEMBAYARAN</b> </h4>
            <p>Nomor : {!! $data->number !!}</p> --}}
            <div class="ba-height-55 no-marginTB no-paddingTB" style = "justify-content:center !important;">
                <h4><b>BERITA ACARA PEMBAYARAN</b></h4>
            </div>
            <div class="ba-height-55" style = "justify-content:center !important;">
                Nomor : {!! $data->number !!}
            </div>
        </div>

        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            <table class="bold">
                <tr class="ba-height-115">
                    <td>Kegiatan</td>
                    <td>:</td>
                    <td>{{ $data->contract->activity->name }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Pekerjaan</td>
                    <td class="pjlp-text-top">:</td>
                    <td>
                        Penyedia Jasa Lainnya Orang Perorangan<br>
                        {{ $data->contract->workPackage->name }}, Jasa {{ $data->contract->position->name }}
                        {{-- {{ $data->contract->workPackage->name }} --}}
                    </td>
                </tr>
                {{-- Added --}}
                {{-- <tr>
                    <td>Pekerjaan</td>
                    <td>:</td>
                    <td>{{ $data->contract->workPackage->name }}</td>
                </tr> --}}
                {{-- --------------------- --}}
                <tr class="ba-height-115">
                    <td>Sumber Dana</td>
                    <td>:</td>
                    <td>{{ $data->source_of_funds }}</td>
                </tr>
            </table>
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
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Jabatan</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Alamat</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->skpd->address ?? '' }}, Pontianak</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br>
                    </td>
                </tr>
                <tr class="ba-height-55">
                    <td></td>
                    <td colspan="3">
                        Selanjutnya disebut <b>PIHAK PERTAMA</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br>
                    </td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">2.</td>
                    <td class="pjlp-text-top">Nama Penyedia Jasa</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->employee->name }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td rowspan="3"></td>
                    <td class="pjlp-text-top">NIK</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">
                        {{ $data->employee->ktp ?? '' }}
                        {{-- XXX{{ $data->employee->nipj }}XXXX --}}
                    </td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Alamat</td>
                    <td class="pjlp-text-top">:</td>
                    <td class="pjlp-text-top">{{ $data->employee->address }}</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br>
                    </td>
                </tr>
                <tr class="ba-height-55">
                    <td></td>
                    <td colspan="3">Selanjutnya disebut <b>PIHAK KEDUA</b></td>
                </tr>
            </table>
        </div>

        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->body_letter !!}
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            <div class="col-xs-6 text-center" style="float:left !important;">
                <p>PIHAK PERTAMA</p>
                <p>Pejabat Pembuat Komitmen<br>{{ $data->skpd->name }}<br>Kota Pontianak</p>
                <p><br><br><br></p>
                <p>{{ $data->functionary->name ?? '' }}<br>NIP. {{ $data->functionary->nip ?? '' }}</p>
                {{-- <div class="row">
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
                </div> --}}
            </div>

            <div class="col-xs-6 text-center" style="float:right !important;">
                <p>PIHAK KEDUA</p>
                <p>Penyedia Jasa {{ $data->contract->position->positionCategory->name }},<br>Jasa {{ $data->contract->position->name }}</p>
                {{-- <p>Penyedia Jasa Petugas Bidang Komunikasi, Informatika, dan Statistika,<br>Jasa Admin Pontive Center<br>(Programmer Web dan Aplikasi)</p> --}}
                <p><br><br><br></p>
                {{-- <p><br><br><br></p> --}}
                <p>{{ $data->employee->name ?? '' }}<br>NIK. {{ $data->employee->ktp ?? '' }}</p>
                {{-- <div class="row">
                    PIHAK KEDUA <br>
                    Penyedia Jasa <br>
                    {{ $data->position->name ?? '' }}
                </div>
                <div class="row">
                </div>
                <div class="row">
                    {{ $data->employee->name }} <br>
                    NIK: {{ $data->employee->nipj }}
                </div> --}}
            </div>
        </div>
    </body>
</html>
