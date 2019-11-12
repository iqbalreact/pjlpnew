<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pemeriksaan Pekerjaan</title>
    {{-- <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}"> --}}
</head>
<body>
    <center>
        <h4>DAFTAR KEHADIRAN APEL PAGI</h4>
        <h4>PENYEDIA JASA LAINNYA ORANG-PERSEORANGAN</h4>
    </center>

    <div class="row">
        <div class="col-sm-1">
            Instansi
        </div>
        <div class="col-sm-11">
            : {{ $skpdName }}
        </div>
    </div>
    <div class="row">
        <div class="col-sm-1">
            Bulan
        </div>
        <div class="col-sm-11">
            : {{ $period['month'] }}
        </div>
    </div>
    <div class="row">
        <div class="col-sm-1">
            Tahun
        </div>
        <div class="col-sm-11">
            : {{ $period['year'] }}
        </div>
    </div>
    <br>
    <table border="1">
        {{-- <thead> --}}
            <tr>
                <td>No</td>
                <td>Nama Penyedia Jasa/Pekerjaan</td>
                @foreach ($dates as $date)
                    @if($date['weekend'])
                        <td style="background-color:grey"> {{ $date['date'] }} </td>
                    @else 
                        <td> {{ $date['date'] }} </td>                        
                    @endif
                @endforeach
            <tr>
        {{-- </thead>
        <tbody> --}}
            @foreach($data as $d)
                <tr>
                    <td> {{ $loop->iteration }}</td>
                    <td width="10%"> 
                        <b>{{ $d->employee->name }}</b> 
                        <br> 
                        {{ $d->position->name }}
                    </td>
                    @foreach ($dates as $date)
                        @if($date['weekend'])
                            <td style="background-color:grey"> </td>
                        @else 
                            <td> </td>                        
                        @endif
                    @endforeach
                </tr>
            @endforeach
        {{-- </tbody> --}}
    </table>
</body>
</html>