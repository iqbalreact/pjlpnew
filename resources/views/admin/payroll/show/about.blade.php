<form class="form-horizontal">

    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label class="col-sm-3 control-label">Bulan Tahun</label>
        
                <div class="col-sm-9">
                    <input class="form-control" value="{{ $data->date }}" readonly>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">NIPJ</label>
        
                <div class="col-sm-9">
                    <input class="form-control" value="{{ $data->employee->nipj }}" readonly>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Nama</label>
        
                <div class="col-sm-9">
                    <input class="form-control" value="{{ $data->employee->name }}" readonly>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label class="col-sm-3 control-label">Hadir</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->attend }}" readonly>
                </div>
            </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Cuti</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->leave }}" readonly>
                </div>
            </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Sakit</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->sick }}" readonly>
                </div>
            </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Tidak Hadir</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->not_present }}" readonly>
                </div>
            </div>
        </div>
    </div>
    

    <hr>

    <div class="row">
        <div class="col-sm-6">
            @foreach ($data->payrollSalaries as $payroll)
            <div class="form-group">
                <label class="col-sm-3 control-label">{{ $payroll->salary_component_name }}</label>
    
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $payroll->nominal }}" readonly>
                </div>
            </div>
            @endforeach

            <div class="form-group">
                <label class="col-sm-3 control-label">Gaji Kotor</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->gross_salary }}" readonly>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            
        
            {{-- <hr> --}}
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Potongan Kehadiran</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->deduction_attendance }}" readonly>
                </div>
            </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Potongan BPJS Kesehatan</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->deduction_bpjs_healthcare }}" readonly>
                </div>
            </div>
        
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Potongan BPJS Ketenagakerjaan</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->deduction_bpjs_social_security }}" readonly>
                </div>
            </div>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">Total Potongan</label>
        
                <div class="col-sm-9">
                    <input class="form-control number_mask" value="{{ $data->total_deduction }}" readonly>
                </div>
            </div>
        </div>
    </div>
    

    <hr>
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <label class="col-sm-1 control-label">Gaji Bersih</label>
        
                <div class="col-sm-11">
                    <input class="form-control number_mask" value="{{ $data->net_salary }}" readonly>
                </div>
            </div>
        </div>
    </div>
</form>