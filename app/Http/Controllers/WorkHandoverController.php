<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\WorkHandoverRequest;

use App\Bussiness\Contracts\WorkHandoverBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Services\Contracts\TerbilangServiceInterface;

use PDF;
use Carbon\Carbon;

class WorkHandoverController extends Controller
{
    public function __construct(
        WorkHandoverBussInterface $workHandover,
        SkpdBussInterface $skpd,
        TerbilangServiceInterface $terbilang
    ) {
        $this->workHandover = $workHandover;
        $this->skpd         = $skpd;
        $this->terbilang    = $terbilang;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.workHandover.index');                        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $initNumber     = "003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019";
        $initSection1   = "<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>";
        $initSection2   = "<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>";
        $initSection3   = "<p>Pasal 1</p>

        <ol>
            <li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:
            <ul>
                <li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>
                <li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>
            </ul>
            </li>
            <li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:
            <ul>
                <li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>
                <li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>
            </ul>
            </li>
        </ol>
        
        <p>Pasal 2</p>
        
        <p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>";

        $initSection4   = "<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>";


        $skpd = '';
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd = $this->skpd->find(\Auth::user()->skpd_id);
        }

        return view('admin.workHandover.create', compact('initNumber', 'initSection1', 'initSection2', 'initSection3', 'initSection4', 'skpd'));                        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WorkHandoverRequest $request)
    {
        $data = $this->workHandover->store($request);

        if (!$data) {
            notify()->warning('PJLP tidak mempunyai aktif kontrak');
            return redirect()->route('workHandover.index');
        }

        notify()->success('Serah terima pekerjaan berhasil dibuat');
        
        return redirect()->route('workHandover.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->workHandover->find($id);

        if (!$data) {
            notify()->warning('Surat serah terima tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.workHandover.show', compact('data'));
    }

    public function export($id)
    {
        $data = $this->workHandover->find($id);

        if (!$data) {
            notify()->warning('Surat serah terima tidak ditemukan');
            return redirect()->back();
        }

        $date = $this->terbilang->convert($data->date);

        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.workHandover.export', compact('data', 'date'))->setPaper('a4', 'potrait');
        return $pdf->download($data->number.'.pdf');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = $this->workHandover->find($id);

        if (!$data) {
            notify()->warning('Surat serah terima tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.workHandover.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(WorkHandoverRequest $request, $id)
    {
        $data = $this->workHandover->update($request, $id);

        notify()->success('Surat serah terima berhasil diupdate');

        return redirect()->route('workHandover.index');
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
