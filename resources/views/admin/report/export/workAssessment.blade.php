<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pemeriksaan Pekerjaan</title>
    <link rel="stylesheet" href="{{ public_path('vendor/adminlte/vendor/bootstrap/dist/css/bootstrap.min.css') }}">         
    <style type="text/css" media="all">
        .default-table {
            border-collapse: separate;
            border-spacing: 10px 0;
        }
    </style>
</head>
<body>
    <div class="row text-center">
        <p>PENILAIAN PRESTASI KERJA</p>
        <p>{{ strtoupper($contract->position->name) }}</p>
    </div>
    
    <div class="row">
        <table class="default-table">
            <tr>
                <td>Nama Penyedia Jasa Perorangan Lainnya</td>
                <td>:</td>
                <td>{{ $employee->name }}</td>
            </tr>
            <tr>
                <td>Pekerjaan</td>
                <td>:</td>
                <td>{{ $workPackage->name }}</td>
            </tr>
            <tr>
                <td>No. SPK</td>
                <td>:</td>
                <td>{{ $workInspection->spk_number }}</td>
            </tr>
            <tr>
                <td>Tanggal SPK</td>
                <td>:</td>
                <td>{{ $workInspection->spk_date }}</td>
            </tr>
            <tr>
                <td>Instansi Tempat Tugas</td>
                <td>:</td>
                <td>{{ $workInspection->skpd->name }}</td>
            </tr>
            <tr>
                <td>Bulan Penilaian</td>
                <td>:</td>
                <td>{{ $month }}</td>
            </tr>
        </table>
    </div>

    <br>
    <div class="row">
        <table width="100%" class="table table-bordered">
            <tr>
                <td colspan="8">Disipin Kerja</td>
                <td colspan="12">Tanggung Jawab Penyelesaian Pekerjaan</td>
                <td colspan="8">Kepatuhan terhadap Kewajiban dan Larangan</td>
                <td rowspan="4">TOTAL NILAI INDIKATOR</td>
                <td rowspan="4">KLASIFIKASI PRESTASI KERJA</td>
            </tr>
            <tr>
                <td colspan="4" style="word-wrap: break-word;">Nilai Kehadiran Kerja</td>
                <td colspan="4" style="word-wrap: break-word;">Nilai Kehadiran Apel Pagi</td>
                <td colspan="4" style="word-wrap: break-word;">Tingkat Penyelesaian Pekerjaan</td>
                <td colspan="4" style="word-wrap: break-word;">Waktu Penyelesaian Pekerjaan</td>
                <td colspan="4" style="word-wrap: break-word;">Kualitas Hasil Pekerjaan Umumnya Dibanding Standar</td>
                <td colspan="4" style="word-wrap: break-word;">Kepatuhan dalam menjalankan tugas/kewajiban yang dibebankan</td>
                <td colspan="4" style="word-wrap: break-word;">Kepatuhan terhadap larangan yang tertuang dalam perikatan kerja</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>work_completion_rate
                <td>{{ $assessmentAttendance == 1 ? 1 : '' }}</td>
                <td>{{ $assessmentAttendance == 2 ? 2 : '' }}</td>
                <td>{{ $assessmentAttendance == 3 ? 3 : '' }}</td>
                <td>{{ $assessmentAttendance == 4 ? 4 : '' }}</td>
                <td>{{ $assessmentCeremony == 1 ? 1 : '' }}</td>
                <td>{{ $assessmentCeremony == 2 ? 2 : '' }}</td>
                <td>{{ $assessmentCeremony == 3 ? 3 : '' }}</td>
                <td>{{ $assessmentCeremony == 4 ? 4 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_rate == 1 ? 1 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_rate == 2 ? 2 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_rate == 3 ? 3 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_rate == 4 ? 4 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_time == 1 ? 1 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_time == 2 ? 2 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_time == 3 ? 3 : '' }}</td>
                <td>{{ $recapAssessment->work_completion_time == 4 ? 4 : '' }}</td>
                <td>{{ $recapAssessment->work_quality == 1 ? 1 : '' }}</td>
                <td>{{ $recapAssessment->work_quality == 2 ? 2 : '' }}</td>
                <td>{{ $recapAssessment->work_quality == 3 ? 3 : '' }}</td>
                <td>{{ $recapAssessment->work_quality == 4 ? 4 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_obligation == 1 ? 1 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_obligation == 2 ? 2 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_obligation == 3 ? 3 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_obligation == 4 ? 4 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_rule == 1 ? 1 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_rule == 2 ? 2 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_rule == 3 ? 3 : '' }}</td>
                <td>{{ $recapAssessment->obidence_on_rule == 4 ? 4 : '' }}</td>
                <td>{{ $totalIndicator }}</td>
                @if($totalIndicator <= 17)
                    <td>BURUK</td>
                @else 
                    <td>BAIK</td>
                @endif
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>

    <div class="row text-center">
        Pontianak, ...................
    </div>

    <div class="row text-center">
        <div class="col-xs-6">
            {{ $workInspection->skpd->name }} <br>
            <b>Selaku Pejabat/Pelaksana Teknis Pekerjaan</b>
            <br>
            <br>
            {{ $workInspection->functionary->name }} <br>
            NIP {{ $workInspection->functionary->nip }}
        </div>
        <div class="col-xs-6">
            {{ $workInspection->skpd->name }} <br>
            <b>Selaku Pejabat Pembuat Komitmen</b>
            <br>
            <br>
            {{ $workInspection->functionaryPPTK->name }} <br>
            NIP. {{ $workInspection->functionaryPPTK->nip }}
        </div>
    </div>
</body>
</html>