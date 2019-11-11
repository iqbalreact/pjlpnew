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
    <div class="form-group">
        <label class="col-sm-2 control-label">Surat Izin Cuti</label>

        <div class="col-sm-10">
            <img src={{ $data->getPicture()}} alt="" class="img-thumbnail">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#deleteModal">Hapus</button>
        </div>
    </div>
</form>

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModalLabel">Konfirmasi hapus cuti</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    Apakah anda yakin?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tidak</button>

                {!! Form::open(['method' => 'DELETE', 'route' =>  ['leaveEmployee.destroy', 'id' => $data->id]  ]) !!}
                    <button type="submit" class="btn btn-danger">Ya, Hapus cuti ini</button>
                {!! Form::close() !!}

            </div>
        </div>
    </div>
</div>