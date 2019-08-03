<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Pejabat</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $functionary->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">SKPD</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $skpd->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Position</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $position }}" readonly>
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
            <input class="form-control" value="{{ $status }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ route('occupation.edit', ['id' => $data->id]) }}" class="btn btn-success"><i class="fa fa-pencil"></i> Edit</a>
        </div>
    </div>
</form>