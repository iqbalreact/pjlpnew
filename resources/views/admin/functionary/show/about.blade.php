<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">NIP</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->nip }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->name }}" readonly>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label">No Telepon</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->phone_number }}" readonly>
        </div>
    </div>
</form>