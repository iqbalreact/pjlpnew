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

    <hr>
    <h4>Jabatan</h4>

    @foreach ($data->occupations as $occupation)
        <div class="form-group">
            <label class="col-sm-2 control-label">Nama Jabatan</label>
    
            <div class="col-sm-10">
                <input class="form-control" value="{{ $occupation->position_transform ?? ''}}" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">SKPD</label>
    
            <div class="col-sm-10">
                <input class="form-control" value="{{ $occupation->skpd->name ?? ''  }}" readonly>
            </div>
        </div>     

        <hr>
    @endforeach
</form>