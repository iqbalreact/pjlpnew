<div class="box-body">
    <div class="form-group">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            <input 
                name="name"
                type="text" 
                class="form-control" 
                id="inputName" 
                placeholder="Nama pegawai" 
                autocomplete="off"
                value={{ $edit ? $data->name : '' }}>
        </div>
    </div>
    <div class="form-group">
        <label name="address" for="inputAddress" class="col-sm-2 control-label">Alamat</label>
        
        <div class="col-sm-10">
            <textarea name="address" class="form-control" placeholder="Alamat pegawai" autocomplete="off">{{ $edit ? $data->address : '' }}</textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="inputAvatar" class="col-sm-2 control-label">Foto</label>
        
        <div class="col-sm-10">
            <input type="file" name="avatar" class="form-control" id="avatar">
        </div>
    </div>
    
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button 
                type="submit" 
                class="btn btn-primary">
                    {{ $edit ? 'Update' : 'Simpan' }}
            </button>
            
            <a href="{{ route('employee.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>
