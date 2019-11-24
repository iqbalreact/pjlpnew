<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->employee->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">SKPD</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->skpd->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">No Kontrak</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->contract->number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Mulai Kontrak</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->contract->start_date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Selesai Kontrak</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->contract->end_date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Jabatan</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->position->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionary->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Posisi Pejabat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionary->occupations->first()->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat PPTK</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionaryPPTK->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Posisi Pejabat PPTK</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionaryPPTK->occupations->first()->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat PPTK 2</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionaryPPTK2->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Posisi Pejabat PPTK2</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->functionaryPPTK2->occupations->first()->name }}" readonly>
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
            <a href="{{ route('export.workInspection', $data->id) }}" class="btn btn-primary">
                Download Surat
            </a>
        </div>
    </div>
</form>