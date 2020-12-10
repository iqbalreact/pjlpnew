<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\WorkInspectionRequest;

use App\Bussiness\Contracts\WorkInspectionBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Services\Contracts\TerbilangServiceInterface;

use PDF;
use Carbon\Carbon;

class WorkInspectionController extends Controller
{
    public function __construct(
        WorkInspectionBussInterface $workInspection,
        SkpdBussInterface $skpd,
        TerbilangServiceInterface $terbilang
    ) {
        $this->workInspection   = $workInspection;
        $this->skpd             = $skpd;
        $this->terbilang        = $terbilang;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.workInspection.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $initNumber     = "003.2.e/BAHPP/Pontive/PET.DISKOMINFO/II/2019";
        $initSection1   = "<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>";
        // $initSection2   = "<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>";
        $initSection2   = "<p>Dengan ini menyatakan dengan sebenar-benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan [isi Nama Paket Pekerjaan], Jasa [isi Nama Posisi] ([isi Keterangan Posisi]) Kegiatan [isi Nama Kegiatan] yang dilaksanakan oleh:</p>";
        $initSection3   = "<p>Berdasarkan:</p>

        <ol>
            <li>Surat Perintah Kerja (SPK) Nomor [isi No.SPK] tanggal [isi Tanggal SPK]</li>
            <li>Surat Perintah Mulai Kerja (SPMK) Nomor [isi No.SPMK] tanggal [isi Tanggal SPMK].</li>
        </ol>

        <p>Dari hasil pemeriksaan pekerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>

        <p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>";

        $skpd = '';
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd = $this->skpd->find(\Auth::user()->skpd_id);
        }

        return view('admin.workInspection.create', compact('initNumber', 'initSection1', 'initSection2', 'initSection3', 'skpd'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $this->workInspection->store($request);

        if (!$data) {
            notify()->warning('PJLP tidak mempunyai aktif kontrak');
            return redirect()->route('workInspection.index');
        }

        notify()->success('Berita Acara Pemeriksaan  pekerjaan berhasil dibuat');

        return redirect()->route('workInspection.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->workInspection->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pemeriksaan terima tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.workInspection.show', compact('data'));
    }

    public function export($id)
    {
        $data = $this->workInspection->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pemeriksaan tidak ditemukan');
            return redirect()->back();
        }

        $date = $this->terbilang->convert($data->date);

        // $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.workInspection.export', compact('data', 'date'))->setPaper('a4', 'potrait');
        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.workInspection.export', compact('data', 'date'))->setPaper(array(0, 0, 612, 935.433), 'potrait');
        // return $pdf->download($data->number.'.pdf');
        return $pdf->stream($data->number.'.pdf');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->workInspection->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pemeriksaan tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.workInspection.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $this->workInspection->update($request, $id);

        notify()->success('Berita Acara Pemeriksaan berhasil diupdate');

        return redirect()->route('workInspection.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
