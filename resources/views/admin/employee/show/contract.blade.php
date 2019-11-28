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

        <br>
        <br>
    @endif

</form>