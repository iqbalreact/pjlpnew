<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\WorkHandoverRequest;

use App\Bussiness\Contracts\PaymentLetterBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;

use PDF;

class PaymentLetterController extends Controller
{
    public function __construct(
        PaymentLetterBussInterface $paymentLetter,
        SkpdBussInterface $skpd
    ) {
        $this->paymentLetter = $paymentLetter;
        $this->skpd          = $skpd;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.paymentLetter.index');                        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $initNumber     = "003.5.e/BAPEMP/Pontive/PET/DISKOMINFO/II/2019";
        $initSection1   = "<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>";
        $bodyLetter     = "<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>

        <p>&nbsp;</p>
        
        <p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.</p>
        
        <p>&nbsp;</p>
        
        <p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>";

        $skpd = '';
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd = $this->skpd->find(\Auth::user()->skpd_id);
        }

        return view('admin.paymentLetter.create', compact('initNumber', 'initSection1', 'bodyLetter', 'skpd'));                        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $this->paymentLetter->store($request);

        if (!$data) {
            notify()->warning('PJLP tidak mempunyai aktif kontrak');
            return redirect()->route('paymentLetter.index');
        }

        notify()->success('Berita Acara Pembayaran dibuat');
        
        return redirect()->route('paymentLetter.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = $this->paymentLetter->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pembayaran tidak ditemukan');
            return redirect()->back();
        }

        return view('admin.paymentLetter.show', compact('data'));
    }

    public function export($id)
    {
        $data = $this->paymentLetter->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pembayaran tidak ditemukan');
            return redirect()->back();
        }

        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.paymentLetter.export', compact('data'))->setPaper('a4', 'potrait');
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
        $data = $this->paymentLetter->find($id);

        if (!$data) {
            notify()->warning('Berita Acara Pembayaran tidak ditemukan');
            return redirect()->back();
        }
        
        return view('admin.paymentLetter.edit', compact('data'));
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
        $data = $this->paymentLetter->update($request, $id);

        notify()->success('Berita Acara Pembayaran berhasil diupdate');

        return redirect()->route('paymentLetter.index');
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
