<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Nomer</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Alamat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->address }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">No Telepon</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->phone_number }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Fax</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->fax }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Kode Post</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->post_code }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Website</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->website }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->email }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ route('skpd.edit', ['id' => $data->id]) }}" class="btn btn-success"><i class="fa fa-pencil"></i> Edit</a>
        </div>
    </div>
</form>