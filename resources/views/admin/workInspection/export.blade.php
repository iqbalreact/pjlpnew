<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
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
            /* td {
                padding: 10px 0;
            } */
            hr.garis-tebal {
                border: 1px solid black !important;
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
            {{-- <h4> <b>BERITA ACARA HASIL PEMERIKSAAN PEKERJAAN</b> </h4>
            <p>Nomor : {!! $data->number !!}</p> --}}
            <div class="ba-height-55 no-marginTB no-paddingTB" style = "justify-content:center !important;">
                <h4><b>BERITA ACARA HASIL PEMERIKSAAN PEKERJAAN</b></h4>
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
        <div class="row text-justify pjlp-content ba-height-115">
            <table>
                <tr class="ba-height-115">
                    <td>1.</td>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionaryPPTK->name ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td rowspan="3"></td>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionaryPPTK->nip ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td>Jabatan</td>
                    <td>:</td>
                    {{-- Edited --}}
                    <td>Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                    {{-- --------------- --}}
                    {{-- <td>Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td> --}}
                </tr>
                <tr class="ba-height-115">
                    <td>Alamat</td>
                    <td>:</td>
                    {{-- Edited --}}
                    <td>{{ $data->skpd->address ?? '' }}, Pontianak</td>
                    {{-- --------------- --}}
                    {{-- <td>{{ $data->functionaryPPTK->address ?? '' }}</td> --}}
                </tr>
                <tr class="ba-height-180">
                    <td>2.</td>
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionary->name ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td rowspan="3"></td>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionary->nip ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>Pejabat Pelaksana Teknik Kegiatan pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr class="ba-height-115">
                    <td>Alamat</td>
                    <td>:</td>
                    {{-- Edited --}}
                    <td>{{ $data->skpd->address ?? '' }}, Pontianak</td>
                    {{-- --------------- --}}
                    {{-- <td>{{ $data->functionary->address ?? '' }}</td> --}}
                </tr>
            </table>
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_2 !!}
        </div>
        <div class="row text-justify pjlp-content">
            <table>
                <tr class="pjlp-text-top ba-height-115">
                    <td width = "1%"> </td>
                    {{-- <td>1</td> --}}
                    <td width = "21%">Nama Penyedia Jasa</td>
                    <td width = "1%">:</td>
                    <td>{{ $data->employee->name ?? '' }}</td>
                </tr>
                <tr class="pjlp-text-top ba-height-115">
                    <td rowspan="3"></td>
                    {{-- <td rowspan="4"></td> --}}
                    <td>NIK</td>
                    <td>:</td>
                    <td>{{ $data->employee->ktp ?? '' }}</td>
                    {{-- <td>{{ $data->employee->nipj ?? '' }}</td> --}}
                </tr>
                <tr class="pjlp-text-top ba-height-115">
                    <td>Alamat</td>
                    <td>:</td>
                    <td>{{ $data->employee->address ?? '' }}</td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_3 !!}
        </div>

        <div class="row text-center ba-height-115 pjlp-content">
        {{-- <div class="row text-center"> --}}
            <br>
            <div class="col-xs-4">
                <p>Penyedia Jasa {{ $data->contract->position->positionCategory->name }},<br>Jasa {{ $data->contract->position->name }}</p>
                {{-- <p>Penyedia Jasa Petugas Bidang Komunikasi, Informatika, dan Statistika<br>Jasa Admin Pontive Center<br>(Programmer Web dan Aplikasi)</p> --}}
                <p><br><br><br><br></p>
                <p>{{ $data->employee->name }}</p>
            </div>
            <div class="col-xs-8">
                <p>Yang Memeriksa</p>
                <p><br><br></p>
                <table>
                    <tr>
                        <td style="width:10px !important;">1.</td>
                        {{-- <td style="width: 10% !important;">1.</td> --}}
                        <td style="width:300px !important;">{{ $data->functionaryPPTK->name }}</td>
                        {{-- <td>{{ $data->functionary->name }}</td> --}}
                        <td style="width:100px !important; text-align:right !important;">.........................</td>
                    </tr>
                    {{-- <p><br></p>
                    <tr>
                        <td>2.</td>
                        <td>{{ $data->functionary->name }}</td>
                        <td>..........</td>
                    </tr> --}}
                    {{-- <tr>
                        <td colspan="3"> </td>
                    </tr> --}}
                </table>
                <br><br><br><br>
                {{-- <p><br><br><br></p> --}}
                <table>
                    <tr>
                        <td style="width:10px !important;">2.</td>
                        <td style="width:300px !important;">{{ $data->functionary->name }}</td>
                        {{-- <td>{{ $data->functionaryPPTK->name }}   </td> --}}
                        <td style="width:100px !important; text-align:right !important;">.........................</td>
                    </tr>
                </table>
                {{-- <div class="row">
                    Yang Memeriksa
                </div>
                <div class="row"></div> --}}
            </div>
        {{-- </div> --}}
        </div>
    </body>
</html>
