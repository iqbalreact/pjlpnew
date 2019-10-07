<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
</head>
<body>
    <h1>Data PJLP</h1>
    <table class="table">
        <thead>
            <tr>
                <th width="10%">NIPJ</th>
                <th>Name</th>
                <th>KTP</th>
                <th>Telepon</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($res as $data)
                <tr>
                    <td>{{ $data->nipj }}</td>
                    <td>{{ $data->name }}</td>
                    <td>{{ $data->ktp }}</td>
                    <td>{{ $data->phone_number }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>