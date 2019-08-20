<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Tahun</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->year }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Januari</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->january }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Februari</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->february }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Maret</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->march }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">April</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->april }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">May</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->may }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Juni</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->june }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Juli</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->july }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Agustus</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->august }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">September</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->september }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Oktober</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->october }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">November</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->november }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Desember</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->december }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ route('workDay.edit', ['id' => $data->id]) }}" class="btn btn-success"><i class="fa fa-pencil"></i> Edit</a>
        </div>
    </div>
</form>