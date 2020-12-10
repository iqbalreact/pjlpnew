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
    <body>
        <div class="row text-center" style="font-weight: bold !important;">
            PENILAIAN PRESTASI KERJA<br>
            JASA {{ strtoupper($contract->position->name) }}
            {{-- <p>PENILAIAN PRESTASI KERJA</p>
            <p>JASA {{ strtoupper($contract->position->name) }}</p> --}}
        </div>
        <br>
        <div class="row">
            <table class="default-table">
                <tr>
                    <td>Nama Penyedia Jasa Perorangan Lainnya</td>
                    <td>:</td>
                    <td>{{ $employee->name }}</td>
                </tr>
                <tr>
                    <td class="pjlp-text-top">Pekerjaan</td>
                    <td class="pjlp-text-top">:</td>
                    <td>{{ $workPackage->name }}, Jasa {{ $contract->position->name }}</td>
                </tr>
                <tr>
                    <td>No. SPK</td>
                    <td>:</td>
                    <td>{{ $workInspection->spk_number }}</td>
                </tr>
                <tr>
                    <td>Tanggal SPK</td>
                    <td>:</td>
                    <td>{{ (new \Carbon\Carbon($workInspection->spk_date))->translatedFormat('d F Y') }}</td>
                    {{-- <td>{{ $workInspection->spk_date }}</td> --}}
                </tr>
                <tr>
                    <td>Instansi Tempat Tugas</td>
                    <td>:</td>
                    <td>{{ $workInspection->skpd->name }} Kota Pontianak</td>
                </tr>
                <tr>
                    <td>Bulan Penilaian</td>
                    <td>:</td>
                    <td>{{ (new \Carbon\Carbon($month))->translatedFormat('F') }}</td>
                    {{-- <td>{{ $month }}</td> --}}
                </tr>
            </table>
        </div>
        <br>
        <div class="row">
            <table class="table table-bordered text-center" style="margin-bottom: 1px !important;">
                <tr style="font-size: 9pt !important; font-weight: bold !important;">
                    <td class="assessment-table" colspan="8">Disiplin Kerja</td>
                    <td class="assessment-table" colspan="12">Tanggung Jawab Penyelesaian Pekerjaan</td>
                    <td class="assessment-table" colspan="8">Kepatuhan terhadap Kewajiban dan Larangan</td>

                    <td class="assessment-table" rowspan="5">TOTAL<br>NILAI INDIKATOR</td>

                    <td class="assessment-table" rowspan="5">KLASIFIKASI PRESTASI KERJA</td>
                </tr>
                <tr style="font-size: 9pt !important; font-weight: bold !important;">
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Nilai Kehadiran Kerja</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Nilai Kehadiran Apel Pagi</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Tingkat Penyelesaian Pekerjaan</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Waktu Penyelesaian Pekerjaan</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Kualitas Hasil Pekerjaan Umumnya Dibanding Standar</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Kepatuhan dalam Menjalankan Tugas / Kewajiban yang Dibebankan</td>
                    <td class="assessment-table" colspan="4" style="word-wrap: break-word;">Kepatuhan terhadap Larangan yang Tertuang dalam Perikatan Kerja</td>
                    {{-- <td class="assessment-table" style="word-wrap: break-word;"></td>

                    <td class="assessment-table" style="word-wrap: break-word;"></td> --}}
                </tr>
                <tr>
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
                    {{-- <td></td>

                    <td></td> --}}
                </tr>
                <tr></tr>
                <tr style="font-size: 9pt !important; font-weight: bold !important;">
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    <td class="assessment-table">1</td>
                    <td class="assessment-table">2</td>
                    <td class="assessment-table">3</td>
                    <td class="assessment-table">4</td>
                    {{-- <td></td> --}}
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}

                    {{-- <td></td> --}}
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}
                </tr>
                <tr>
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

                    <td class="assessment-table"></td>
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}

                    <td class="assessment-table"></td>
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}
                </tr>
                <tr style="font-weight: bold !important;">
                    <td class="assessment-table">{{ $assessmentAttendance == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentAttendance == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentAttendance == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentAttendance == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $assessmentCeremony == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentCeremony == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentCeremony == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $assessmentCeremony == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $recapAssessment->work_completion_rate == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_rate == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_rate == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_rate == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $recapAssessment->work_completion_time == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_time == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_time == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_completion_time == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $recapAssessment->work_quality == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_quality == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_quality == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->work_quality == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $recapAssessment->obidence_on_obligation == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_obligation == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_obligation == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_obligation == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $recapAssessment->obidence_on_rule == 1 ? 1 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_rule == 2 ? 2 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_rule == 3 ? 3 : '' }}</td>
                    <td class="assessment-table">{{ $recapAssessment->obidence_on_rule == 4 ? 4 : '' }}</td>

                    <td class="assessment-table">{{ $totalIndicator }}</td>

                    @if($totalIndicator <= 17)
                        <td class="assessment-table">BURUK</td>
                    @else
                        <td class="assessment-table">BAIK</td>
                    @endif
                </tr>
                <tr>
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

                    <td class="assessment-table"></td>
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}

                    <td class="assessment-table"></td>
                    {{-- <td></td>
                    <td></td>
                    <td></td> --}}
                </tr>
            </table>
        </div>

        <div class="row text-center" style="font-weight: bold !important; margin-top: 0px !important;">
            Pontianak, 
            @if ((new \Carbon\Carbon($end))->translatedFormat('F Y') == "Juli 2020")
                30 Juli 2020
            @else
                {{ (new \Carbon\Carbon($end))->translatedFormat('d F Y') }}
            @endif
        </div>
        <br>
        <div class="row text-center">
            <div class="col-xs-6">
                {{ $workInspection->skpd->name }} Kota Pontianak<br>
                <b>
                    Selaku Pejabat / Pelaksana Teknis Pekerjaan
                    <br><br><br><br>
                    <u>{{ $workInspection->functionary->name }}</u><br>
                    NIP. {{ $workInspection->functionary->nip }}
                </b>
            </div>
            <div class="col-xs-6">
                {{ $workInspection->skpd->name }} Kota Pontianak<br>
                <b>
                    Selaku Pejabat Pembuat Komitmen
                    <br><br><br><br>
                    <u>{{ $workInspection->functionaryPPTK->name }}</u><br>
                    NIP. {{ $workInspection->functionaryPPTK->nip }}
                </b>
            </div>
        </div>
    </body>
</html>
