<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ route('positionCategory.edit', ['id' => $data->id]) }}" class="btn btn-success"><i class="fa fa-pencil"></i> Edit</a>
        </div>
    </div>
</form>