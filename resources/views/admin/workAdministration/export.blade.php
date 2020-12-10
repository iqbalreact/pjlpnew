<html>
    <head>
        <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            hr.garis-tebal {
                border: 1px solid black !important;
            }
            .default-table {
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
            .work-adm {
                border: 1px solid black !important;
            }
            /* tr.work-adm {
                border: 1px solid black !important;
            } */
            /* td {
                padding: 10px 0;
            } */
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
            {{-- <h4><b>BERITA ACARA HASIL PEMERIKSAAN ADMINISTRASI</b></h4>
            <p>Nomor : {!! $data->number !!}</p> --}}
            <div class="ba-height-55 no-marginTB no-paddingTB" style = "justify-content:center !important;">
                <h4><b>BERITA ACARA HASIL PEMERIKSAAN ADMINISTRASI</b></h4>
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
            <table class="default-table">
                <tr class="ba-height-115">
                    <td>Nama</td>
                    <td>:</td>
                    <td>{{ $data->functionary->name ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $data->functionary->nip ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Jabatan</td>
                    <td class="pjlp-text-top">:</td>
                    {{-- <td>Pejabat Pemeriksa Hasil Pekerjaan {{ $data->skpd->name ?? '' }} Kota Pontianak</td> --}}
                    <td>Pejabat Pemeriksa Hasil Pekerjaan<br>pada {{ $data->skpd->name ?? '' }} Kota Pontianak</td>
                </tr>
                <tr class="ba-height-115">
                    <td>Alamat</td>
                    <td>:</td>
                    {{-- Edited --}}
                    <td>{{ $data->skpd->address ?? '' }}, Pontianak</td>
                    {{-- --------------- --}}
                </tr>
            </table>
        </div>

        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_2 !!}
        </div>

        <div class="row text-justify pjlp-content">
            <table class="default-table">
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Nama Kegiatan</td>
                    <td class="pjlp-text-top">:</td>
                    <td>{{ $data->contract->activity->name }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Nama Pekerjaan</td>
                    <td class="pjlp-text-top">:</td>
                    {{-- <td>{{ $data->contract->workPackage->name }}</td> --}}
                    <td>Jasa {{ $data->contract->position->positionCategory->name }}, Jasa {{ $data->contract->position->name }} ({{ $data->section_1 }})</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Nilai Kontrak</td>
                    <td class="pjlp-text-top">:</td>
                    <td>Rp. {{ $totalContract }},00</td>
                </tr>
            </table>
            <br>
            <table class="default-table">
                <tr>
                    <td width = "21%"></td>
                    <td width = "1%"></td>
                    <td width = "78%"></td>
                </tr>
                <tr class="ba-height-115">
                    <td>Data Penyedia:</td>
                    <td colspan="3"></td>
                </tr>
                <tr class="ba-height-115">
                    <td>Nama Penyedia Jasa</td>
                    <td>:</td>
                    <td>{{ $data->employee->name ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td>NIK</td>
                    <td>:</td>
                    <td>{{ $data->employee->ktp ?? '' }}</td>
                </tr>
                <tr class="ba-height-115">
                    <td class="pjlp-text-top">Alamat</td>
                    <td class="pjlp-text-top">:</td>
                    <td>{{ $data->employee->address ?? '' }}</td>
                </tr>
            </table>
        </div>
        <br>
        {{-- <p></p> --}}
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_3 !!}
        </div>
        <div class="row pjlp-content ba-height-115">
            Dengan hasil pemeriksaan sebagai berikut:
        </div>
        <br>
        <div class="row text-justify pjlp-content">
            <table width="100%" class="table table-bordered">
                <tr class="text-center no-padding-all" style="font-weight: bold !important;">
                    <td class="work-adm">No.</td>
                    <td class="work-adm">Item yang Diperiksa</td>
                    <td class="work-adm">Sesuai</td>
                    <td class="work-adm">Tidak Sesuai</td>
                    <td class="work-adm">Keterangan</td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm">I</td>
                    <td class="work-adm" style="padding-left: 3px !important;">PELAKSANAAN</td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm"></td>
                    <td class="work-adm" style="padding-left: 3px !important;">a.&nbsp;Daftar Hadir Kerja Harian</td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm"></td>
                    <td class="work-adm" style="padding-left: 3px !important;">b.&nbsp;Daftar Hadir Apel Pagi</td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm"></td>
                    <td class="work-adm" style="padding-left: 3px !important;">c.&nbsp;BA Hasil Pemeriksaan Pekerjaan oleh PPK</td>
                    {{-- <td>BA Hasil Pemeriksaan Pekerjaan oleh PPKOM</td> --}}
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm"></td>
                    <td class="work-adm" style="padding-left: 3px !important;">d.&nbsp;Penilaian Prestasi Kerja Bulanan</td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
                <tr class="no-padding-all">
                    <td class="text-center work-adm"></td>
                    <td class="work-adm" style="padding-left: 3px !important;">e.&nbsp;BA Serah Terima Pekerjaan</td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                    <td class="work-adm"></td>
                </tr>
            </table>
        </div>
        {{-- <p><br></p> --}}
        {{-- <br> --}}
        <div class="row text-justify pjlp-content ba-height-115">
            {!! $data->section_4 !!}
        </div>
        <br>
        <div class="row text-justify pjlp-content ba-height-115">
            <div class="col-xs-offset-6 col-xs-6 text-center">
                <p>Diperiksa Oleh,</p>
                <p>Pejabat Pemeriksa Hasil Pekerjaan<br>{{ $data->skpd->name }} Kota Pontianak</p>
                <p><br><br></p>
                <p>{{ $data->functionary->name }}<br>NIP. {{ $data->functionary->nip }}</p>
            </div>
        </div>
    </body>
</html>
