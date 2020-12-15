<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Evaluasai Prestasi Kerja</title>
        <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
        <style type="text/css" media="all">
            .default-table {
                border-collapse: separate;
                border-spacing: 10px 0;
            }
            .assessment-table{
                border: 1px solid black !important;
            }
            tr .assessment-table{
                border: 1px solid black !important;
            }
            .pjlp-text-top{
                vertical-align: text-top !important;
            }
        </style>
    </head>
    <body style="margin : 25px;">
        <div class="row text-center" style="font-weight: bold !important;">
            EVALUASI PRESTASI KERJA <br>
            PENYEDIA JASA LAINNYA ORANG-PERORANGAN
        </div>
        <br>
        <div class="row" style="font-weight: bold">
            <table class="default-table">
                <tr>
                    <td>Nama Penyedia Jasa Perorangan Lainnya</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td>{{ $recap[0]['nama'] }}</td>
                </tr>
                <tr>
                    <td class="pjlp-text-top">No. SPK</td>
                    <td class="pjlp-text-top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td>{{ $recap[0]['spk'] }}</td>
                </tr>
                <tr>
                    <td>Tanggal SPK</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td>{{ (new \Carbon\Carbon($recap[0]['tanggal']))->translatedFormat('d F Y') }}</td>
                </tr>
                <tr>
                    <td>Instansi Tempat Tugas</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td>{{ $recap[0]['skpd'] }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Periode Evaluasi Penilaian</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                    <td>bulan Januari s.d bulan Desember Tahun {{ $recap[0]['year'] }}</td>
                </tr>
            </table>
        </div>
        <br>
        <div class="row" style="text-align: center">
            <table class="table table-bordered text-center" style="margin-bottom: 1px !important;">
                <tr style="font-size: 9pt !important; font-weight: bold !important;">
                    <td class="assessment-table" colspan="12">NILAI PRESTASI KERJA (Bulanan)</td>

                    <td class="assessment-table" rowspan="2">TOTAL<br>NILAI PRESTASI <br>KERJA SELAMA MASA <br>SPK</td>

                    <td class="assessment-table" rowspan="2">RATA-RATA<br>NILAI PRESTASI KERJA <br> SELAMA MASA SPK</td>

                    <td class="assessment-table" rowspan="2">KLASIFIKASI PRESTASI <br> KERJA</td>
                </tr>
                <tr style="font-weight: bold !important;">
                    <td class="assessment-table" style="word-wrap: break-word">Jan</td>
                    <td class="assessment-table" style="word-wrap: break-word">Feb</td>
                    <td class="assessment-table" style="word-wrap: break-word">Mar</td>
                    <td class="assessment-table" style="word-wrap: break-word">Apr</td>
                    <td class="assessment-table" style="word-wrap: break-word">Mei</td>
                    <td class="assessment-table" style="word-wrap: break-word">Jun</td>
                    <td class="assessment-table" style="word-wrap: break-word">Jul</td>
                    <td class="assessment-table" style="word-wrap: break-word">Agust</td>
                    <td class="assessment-table" style="word-wrap: break-word">Sep</td>
                    <td class="assessment-table" style="word-wrap: break-word">Okt</td>
                    <td class="assessment-table" style="word-wrap: break-word">Nov</td>
                    <td class="assessment-table" style="word-wrap: break-word">Des</td>
                </tr>
                <tr>
                    <td class="assessment-table" style="height: 20px"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                </tr>

                <tr>
                    @foreach ($recap as $item)
                        @foreach ($item['prestasi'] as $k)
                            @if ($k['total'] == 0)
                            <td class="assessment-table">
                                -
                            </td>
                            @else
                            <td class="assessment-table">
                                {{$k['total']}}
                            </td>
                            @endif
                        @endforeach
                    @endforeach
                    <td class="assessment-table" style="widht : 25px">
                        {{ $recap[0]['totalNilai'] }}
                    </td>
                    <td class="assessment-table" style="widht : 25px">
                        {{ $recap[0]['rataNilai'] }}
                    </td>
                    <td class="assessment-table" style="widht : 25px">
                        {{ $recap[0]['predikat'] }}
                    </td>
                </tr>

                <tr>
                    <td class="assessment-table" style="height: 50px">
                    </td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>

                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                    <td class="assessment-table"></td>
                </tr>


            </table>
        </div>

        <div class="row" style="margin-top: 20px; margin-bottom : 20px">
            Klasifikasi Prestasi Kerja <br> <br>
            <table style="margin-left: 40px;">
                <tr style="font-weight: bold">
                    <td>BAIK</td>
                    <td> &nbsp; : </td>
                    <td>&nbsp;Rata-rata Total Nilai Prestasi Kerja 18 - 28</td>
                </tr>
                <tr style="font-weight: bold">
                    <td>BURUK</td>
                    <td> &nbsp; :</td>
                    <td> &nbsp;Rata-rata Total Nilai Prestasi Kerja 07 - 17</td>
                </tr>
            </table>
        </div>

        <div class="row text-center" style="font-weight: bold !important; margin-top: 0px !important;">
            Pontianak,  &nbsp;&nbsp;&nbsp;&nbsp; Desember {{ $recap[0]['year'] }}
        </div>
        <br>
        <div class="row text-center">
            <div class="col-xs-4">
                <b>
                    Kasi Pusat Layanan Pengaduan <br>
                    Dinas Komunikasi dan Informatika Kota Pontianak <br>
                    Selaku Pejabat / Pelaksana Teknis Pekerjaan
                    <br><br><br><br>
                    <u>Sri Wulani Rezeki Elida, S.Si., MA., M.S.E</u><br>
                    NIP. 197905282005012008
                </b>
            </div>
            <div class="col-xs-4">
                <b>
                    Kabid. Pelayanan Elektronik dan Telematika <br>
                    Dinas Komunikasi dan Informatika Kota Pontianak <br>
                    Selaku Pejabat Pembuat Komitmen
                    <br><br><br><br>
                    <u>Syamsul Akbar, M.Eng., M.Sc</u><br>
                    NIP. 197709012002121006
                </b>
            </div>
            <div class="col-xs-4">
                <b>
                    Kepala Dinas Komunikasi dan Informatika <br> Kota Pontianak<br>
                    Selaku Pejabat Pembuat Komitmen
                    <br><br><br><br>
                    <u>Ir. H. Urai Indra Mulya, MM</u><br>
                    NIP. 196103291989031004
                </b>
            </div>
        </div>
    </body>
</html>
