<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $data->name }}</title>
    <link rel="stylesheet" href="{{ asset('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">
</head>
<body>
    <center>  
        <img src="{{ $data->getAvatar() }}" class="img-circle" height="250px" alt="">
        <h3>{{ $data->name }}</h3>
        <h4>NIPJ: {{ $data->nipj }}</h4>
    </center>  

    <br><br>

    <h3>Detail: </h3>
    <table class="table">
        <tr>
            <td width="20%">NIPJ</td>
            <td width="5%">:</td>
            <td>{{ $data->nipj }}</td>
        </tr>
        <tr>
            <td width="20%">Nama</td>
            <td width="5%">:</td>
            <td>{{ $data->name }}</td>
        </tr>
        <tr>
            <td width="20%">No KTP</td>
            <td width="5%">:</td>
            <td>{{ $data->ktp }}</td>
        </tr>
        <tr>
            <td width="20%">Jenis Kelamin</td>
            <td width="5%">:</td>
            <td>{{ $data->genderNameTransform }}</td>
        </tr>
        <tr>
            <td width="20%">Alamat</td>
            <td width="5%">:</td>
            <td>{{ $data->address }}</td>
        </tr>
        <tr>
            <td width="20%">Agama</td>
            <td width="5%">:</td>
            <td>{{ $data->religionNameTransform }}</td>
        </tr>
        <tr>
            <td width="20%">No Telepon</td>
            <td width="5%">:</td>
            <td>{{ $data->phone_number }}</td>
        </tr>
        <tr>
            <td width="20%">Bank</td>
            <td width="5%">:</td>
            <td>{{ $data->bankNameTransform }}</td>
        </tr>
        <tr>
            <td width="20%">Rekening</td>
            <td width="5%">:</td>
            <td>{{ $data->account_number }}</td>
        </tr>
        <tr>
            <td width="20%">NPWP</td>
            <td width="5%">:</td>
            <td>{{ $data->npwp }}</td>
        </tr>
        <tr>
            <td width="20%">BPJS Kesehatan</td>
            <td width="5%">:</td>
            <td>{{ $data->bpjs_healthcare }}</td>
        </tr>
        <tr>
            <td width="20%">BPJS Ketenagakerjaan</td>
            <td width="5%">:</td>
            <td>{{ $data->bpjs_social_security }}</td>
        </tr>
    </table>
    
    <h3>Data Kontrak</h3>
    @if($contract)
        <table class="table">
            <tr>
                <td width="20%">SKPD</td>
                <td width="5%">:</td>
                <td>{{ $contractInformation->skpd->name }}</td>
            </tr>
            <tr>
                <td width="20%">Program</td>
                <td width="5%">:</td>
                <td>{{ $contractInformation->program->name }}</td>
            </tr>
            <tr>
                <td width="20%">Kegiatan</td>
                <td width="5%">:</td>
                <td>{{ $contractInformation->activity->name }}</td>
            </tr>
            <tr>
                <td width="20%">Paket Pekerjaan</td>
                <td width="5%">:</td>
                <td>{{ $contractInformation->workPackage->name }}</td>
            </tr>
            <tr>
                <td width="20%">Posisi</td>
                <td width="5%">:</td>
                <td>{{ $contractInformation->position->name }}</td>
            </tr>
        </table>
    @endif
</body>
</html>