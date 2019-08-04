<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">NIPJ</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $employee->nipj }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $employee->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Paket Pekerjaan</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $workPackage->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Posisi</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $position->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Lokasi</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $location->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $functionary->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Gaji</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->salary }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Mulai</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->start_date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Tanggal Selesai</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->end_date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Status</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->status }}" readonly>
        </div>
    </div>
</form>