<form class="form-horizontal">

    @if($contract)
        <div class="form-group">
            <label class="col-sm-2 control-label">SKPD</label>

            <div class="col-sm-10">
                <input class="form-control" value="{{ $contractInformation->skpd->name }}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Program</label>

            <div class="col-sm-10">
                <input class="form-control" value="{{ $contractInformation->program->name }}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Kegiatan</label>

            <div class="col-sm-10">
                <input class="form-control" value="{{ $contractInformation->activity->name }}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Paket Pekerjaan</label>

            <div class="col-sm-10">
                <input class="form-control" value="{{ $contractInformation->workPackage->name }}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Posisi</label>

            <div class="col-sm-10">
                <input class="form-control" value="{{ $contractInformation->position->name }}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Tanggal Mulai</label>
            <div class="col-sm-4">
                <input class="form-control" value="{{ \Carbon\Carbon::parse($contractInformation->start_date)->format('j F Y') }}" readonly>
            </div>
            <label class="col-sm-2 control-label">Tanggal Selesai</label>
            <div class="col-sm-4">
                <input class="form-control" value="{{ \Carbon\Carbon::parse($contractInformation->end_date)->format('j F Y') }}" readonly>
            </div>            
        </div>


        <br>
        <br>
    @endif

</form>