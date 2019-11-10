<form class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">NIP</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->employee->nipj }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Nama</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->employee->name }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Jenis Cuti</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->leave_type == 0 ? 'Cuti Reguler' : 'Cuti melahirkan/Kecelakaan kerja' }}" readonly>
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
        <label class="col-sm-2 control-label">Jumlah Hari</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->total_day }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Data Tanggal</label>

        <div class="col-sm-10">
            <ul>
                @foreach ($transformDate as $date)
                    <li>{{ $date }}</li>
                @endforeach
            </ul>
        </div>
    </div>
</form>