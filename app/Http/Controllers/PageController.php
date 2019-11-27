<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Bussiness\Contracts\SkpdBussInterface;
use App\Bussiness\Contracts\OccupationBussInterface;

class PageController extends Controller
{
    public function __construct(
        SkpdBussInterface $skpd,
        OccupationBussInterface $occupation    
    ) {
        $this->skpd         = $skpd;
        $this->occupation   = $occupation;
    }

    public function dashboard(Request $request)
    {
        $skpd_id = \Auth::user()->skpd_id;
    
        $skpd = null;
        if (\Auth::user()->getRoles() != 'superadmin') {
            $skpd = $this->skpd->find($skpd_id);
        }

        $ppkom  = $this->occupation->getByOccupation('ppkom');
        $pa     = $this->occupation->getByOccupation('pa');
        $pptk   = $this->occupation->getByOccupation('pptk');
        $pphp   = $this->occupation->getByOccupation('pphp');

        return view('dashboard', compact('skpd', 'ppkom', 'pa', 'pptk', 'pphp'));
    }
}
