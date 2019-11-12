<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pemeriksaan Pekerjaan</title>
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
</head>
<body>
    <h1>Tes</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Penyedia Jasa/Pekerjaan</th>
                @foreach ($dates as $date)
                    @if($date['weekend'])
                        <th style="background-color:grey"> {{ $date['date'] }} </th>
                    @else 
                        <th> {{ $date['date'] }} </th>                        
                    @endif
                @endforeach
            <tr>
        </thead>
        <tbody>
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
        </tbody>
    </table>
</body>
</html>