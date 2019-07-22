<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">NIK</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->nik }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Role</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->rolenametransform }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">SKPD</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->skpd->name ?? '' }}" readonly>
        </div>
    </div>
    
</form>