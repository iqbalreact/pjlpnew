<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\PaymentLetterRequest;

use App\Bussiness\Contracts\PaymentLetterBussInterface;
use App\Bussiness\Contracts\SkpdBussInterface;
use App\Services\Contracts\TerbilangServiceInterface;

use PDF;

class PaymentLetterController extends Controller
{
    public function __construct(
        PaymentLetterBussInterface $paymentLetter,
        SkpdBussInterface $skpd,
        TerbilangServiceInterface $terbilang
    ) {
        $this->paymentLetter = $paymentLetter;
        $this->skpd          = $skpd;
        $this->terbilang    = $terbilang;
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
        $initNumber     = "003.5.e/BAPEMP/OPCKP-P.Prog/PET/DISKOMINFO/II/2019";
        $initSection1   = "<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>";
        // $bodyLetter     = "<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara Serah Terima Nomor: 003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>

        // <p> </p>

        // <p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah Rp. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.</p>

        // <p> </p>

        // <p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>";
        $bodyLetter     = "<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara Serah Terima Nomor: 003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019 Tanggal 1 Februari 2019 bahwa untuk Kegiatan Operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara tersebut.</p>

        <p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah Rp. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: [isi Nomor Rekening PJLP Bersangkutan] Atas Nama [isi Nama PJLP Pemilik Akun Bank tersebut].</p>

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
    public function store(PaymentLetterRequest $request)
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

        $date = $this->terbilang->convert($data->date);
        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('admin.paymentLetter.export', compact('data', 'date'))->setPaper(array(0, 0, 612, 935.433), 'portrait');
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
    public function update(PaymentLetterRequest $request, $id)
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
