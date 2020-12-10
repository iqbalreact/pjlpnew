@php
    error_reporting(E_ALL ^ E_DEPRECATED);
@endphp
{{-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    {{-- <meta charset="UTF-8"> --}}
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> --}}
    {{-- <meta http-equiv="X-UA-Compatible" content="ie=edge"> --}}
    <title>Pemeriksaan Pekerjaan</title>
    <style type="text/css" media="all">
        .attendance-style {
            font-family: DejaVu Sans, sans-serif !important;
        }
        /* @font-face {
            font-family: "source_sans_proregular";
            src: local("Source Sans Pro"), url("fonts/sourcesans/sourcesanspro-regular-webfont.ttf") format("truetype");
            font-weight: normal;
            font-style: normal;

        } */
        .content {
            border-collapse: collapse;
        }

        .content tr, .content td, .content th {
            border: 1px solid black;
        }

        .header {
            text-align: center;
            line-height: 0.5;
            font-weight: bold;
        }

        .center-text {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header attendance-style">
        <p>DAFTAR KEHADIRAN APEL PAGI</p>
        <p>PENYEDIA JASA LAINNYA ORANG-PERSEORANGAN</p>
    </div>

    <table class="attendance-style" style="font-size: 11pt;">
        <tr>
            <td>Instansi</td>
            <td>:</td>
            <td> {{ $skpdName }} </td>
        </tr>
        <tr>
            <td>Bulan</td>
            <td>:</td>
            <td> {{ $period['month'] }} </td>
        </tr>
        <tr>
            <td>Tahun</td>
            <td>:</td>
            <td> {{ $period['year'] }} </td>
        </tr>
    </table>
    <br>
    {{-- <img src={{ public_path('/img/pontianak-logo.svg') }} width="150px"><br> --}}
    <table class="content">
        <tr>
            <th rowspan="2" class="center-text"> No</th>
            <th width="5%" rowspan="2" class="center-text">Nama Penyedia Jasa/Pekerjaan</th>
            <th colspan="{{ count($dates) }}" class="center-text"> Tanggal/Paraf </th>
        </tr>
        <tr class="center-text">
            @foreach ($dates as $date)
                @if($date['weekend'])
                    <th style="background-color:grey"> {{ $date['date'] }} </th>
                @else
                    <th> {{ $date['date'] }} </th>
                @endif
            @endforeach
        </tr>
        @foreach($data as $d)
            <tr style="page-break-inside: avoid">
                <td class="center-text">{{ $loop->iteration }}</td>
                <td width="10%">
                    <b>{{ $d->employee->name }}</b>
                    <br>
                    {{ $d->position->name }}
                </td>
                @foreach ($dates as $date)
                    {{-- @if($date['weekend'])
                        <td style="background-color:grey"> </td>
                    @else
                        @foreach ($att_data as $att_val)
                            <td class = "attendance-style center-text">&#10003;</td>
                        @endforeach
                    @endif --}}
                    @if($date['weekend'])
                        <td style="background-color:grey"> </td>
                    @else
                        <td class = "attendance-style center-text">&#10003;</td>
                    @endif
                @endforeach
            </tr>
        @endforeach
    </table>
</body>
</html>
