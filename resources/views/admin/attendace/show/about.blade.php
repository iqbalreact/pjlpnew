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

    <div class="form-group">
        <label class="col-sm-2 control-label">NIPJ</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->nipj }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">No KTP</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->ktp }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Jenis Kelamin</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->genderNameTransform }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Alamat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->address }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Agama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->religionNameTransform }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">No Telepon</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->phone_number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Bank</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->bankNameTransform }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Rekening</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->account_number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">NPWP</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->npwp }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">BPJS Kesehatan</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->bpjs_healthcare }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">BPJS Ketenagakerjaan</label>

        <div class="col-sm-10">
            <input class="form-control" value='{{ $data->bpjs_social_security }}' readonly>
        </div>
    </div>
</form>