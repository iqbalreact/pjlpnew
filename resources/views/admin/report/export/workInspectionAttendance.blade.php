<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pemeriksaan Pekerjaan</title>
    <style type="text/css" media="all">
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
    <div class="header">
        <p>DAFTAR KEHADIRAN KERJA</p>
        <p>PENYEDIA JASA LAINNYA ORANG-PERSEORANGAN</p>
    </div>

    <table>
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

    <table class="content">
        <tr>
            <th rowspan="2"> No</th>
            <th width="5%" rowspan="2">Nama Penyedia Jasa/Pekerjaan</th>
            <th width="5%" rowspan="2">Jam Kerja</th>
            <th colspan="{{ count($dates) }}" class="center-text"> Tanggal/Paraf </th>
        </tr>
        <tr>
            @foreach ($dates as $date)
                @if($date['weekend'])
                    <th style="background-color:grey"> {{ $date['date'] }} </th>
                @else 
                    <th> {{ $date['date'] }} </th>                        
                @endif
            @endforeach
        </tr>
        @foreach($data as $d)
            <tr style"page-break-inside: avoid">
                <td> {{ $loop->iteration }}</td>
                <td width="10%"> 
                    <b>{{ $d->employee->name }}</b> 
                    <br> 
                    {{ $d->position->name }}
                </td>
                <td> 07.15 - 15.30 </td>
                @foreach ($dates as $date)
                    @if($date['weekend'])
                        <td style="background-color:grey"> </td>
                    @else 
                        <td> </td>                        
                    @endif
                @endforeach
            </tr>
        @endforeach
    </table>
</body>
</html>