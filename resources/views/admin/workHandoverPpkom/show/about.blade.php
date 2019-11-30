<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat PPKOM</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionary->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Jabatan</label>

        <div class="col-sm-10">
            <input class="form-control" value="Pejabat Pembuat Komitmen pada {{ $data->skpd->name ?? '' }} Kota Pontianak" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">SKPD</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->skpd->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat PA</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionary2->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Posisi Pejabat</label>

        <div class="col-sm-10">
            <input class="form-control" value="Kuasa Pengguna Anggaran / Pengguna Anggaran" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">No Surat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Terbit</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ route('export.workHandoverPpkom', $data->id) }}" class="btn btn-primary">
                Download Surat
            </a>
        </div>
    </div>
</form>