<form class="form-horizontal">

    <div class="form-group">
        <label class="col-sm-2 control-label">Bulan Tahun</label>

        <div class="col-sm-10">
            <input class="form-control" value="{{ $data->date }}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">NIPJ</label>

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

    <hr>

    <div class="form-group">
        <label class="col-sm-2 control-label">Hadir</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->attend }}" readonly>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Cuti</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->leave }}" readonly>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Sakit</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->sick }}" readonly>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Tidak Hadir</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->not_present }}" readonly>
        </div>
    </div>

    <hr>

    @foreach ($data->payrollSalaries as $payroll)
        <div class="form-group">
            <label class="col-sm-2 control-label">{{ $payroll->salary_component_name }}</label>

            <div class="col-sm-10">
                <input class="form-control number_mask" value="{{ $payroll->nominal }}" readonly>
            </div>
        </div>
    @endforeach

    <div class="form-group">
        <label class="col-sm-2 control-label">Gaji Kotor</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->gross_salary }}" readonly>
        </div>
    </div>

    <hr>

    <div class="form-group">
        <label class="col-sm-2 control-label">Potongan Kehadiran</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->deduction_attendance }}" readonly>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Potongan BPJS Kesehatan</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->deduction_bpjs_healthcare }}" readonly>
        </div>
    </div>


    <div class="form-group">
        <label class="col-sm-2 control-label">Potongan BPJS Ketenagakerjaan</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->deduction_bpjs_social_security }}" readonly>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label">Total Potongan</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->total_deduction }}" readonly>
        </div>
    </div>

    <hr>

    <div class="form-group">
        <label class="col-sm-2 control-label">Gaji Bersih</label>

        <div class="col-sm-10">
            <input class="form-control number_mask" value="{{ $data->net_salary }}" readonly>
        </div>
    </div>
</form>