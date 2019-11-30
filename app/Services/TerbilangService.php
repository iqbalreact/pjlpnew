<?php

namespace App\Services;

use Illuminate\Http\Request;

use App\Services\Contracts\TerbilangServiceInterface;

use Carbon\Carbon;
use Terbilang;

class TerbilangService implements TerbilangServiceInterface
{
    public function convert($date)
    {
        $date = Carbon::parse($date);

        $dateDay        = Carbon::parse($date)->format('d');
        $dateYear       = Carbon::parse($date)->format('Y');

        return 'Pada Hari ini <b>'.$date->locale('id')->dayName.
                '</b> tanggal <b>'.ucWords(Terbilang::make($dateDay)).
                '</b> Bulan <b>'.$date->locale('id')->monthName. 
                '</b> Tahun <b>'.ucWords(Terbilang::make($dateYear)).
                '</b> kami yang bertanda tangan dibawah ini:';
    }
}