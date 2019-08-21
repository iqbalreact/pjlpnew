<div class="box-body">
    <div class="form-group {{ $errors->has('nip') ? 'has-error' : '' }}">
        <label for="inputNIP" class="col-sm-2 control-label">NIP @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('nip', $edit ? $data->nip : old('nip'), ['class' => 'form-control', 'placeholder'=> __('NIP')] ) !!}
            
            @if ($errors->has('nip'))
                <span class="help-block">{{ $errors->first('nip') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
        <label for="inputName" class="col-sm-2 control-label">Nama @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::text('name', $edit ? $data->name : old('name'), ['class' => 'form-control', 'placeholder'=> __('Nama pengguna')] ) !!}
            
            @if ($errors->has('name'))
                <span class="help-block">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Email @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::email('email', $edit ? $data->email : old('email'), ['class' => 'form-control', 'placeholder'=> __('Email pengguna')] ) !!}
            
            @if ($errors->has('email'))
                <span class="help-block">{{ $errors->first('email') }}</span>
            @endif
        </div>
    </div>

    @if(!$edit)
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">Password Default</label>
            
            <div class="col-sm-10">
                <input type="text" class="form-control" value="pjlppontianak" disabled>    
            </div>
        </div>
    @endif

    <div class="form-group {{ $errors->has('avatar') ? 'has-error' : '' }}">
        <label for="inputAvatar" class="col-sm-2 control-label">Foto</label>
        
        <div class="col-sm-10">
            {!! Form::file('avatar', ['class' => 'form-control', 'id' => 'avatar'] ) !!}
            @if ($errors->has('avatar'))
                <span class="help-block">{{ $errors->first('avatar') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('role') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">Role @include('components.required')</label>

        <div class="col-sm-10">
            {!! Form::select('role', $roles, $edit ? $data->rolename : old('role') ,['class' => 'form-control','id' => 'roleSelect', 'style'=>"width: 100%;"])!!}

            @if ($errors->has('role'))
                <span class="help-block">{{ $errors->first('role') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group {{ $errors->has('skpd_id') ? 'has-error' : '' }}">
        <label for="inputEmail" class="col-sm-2 control-label">SKPD @include('components.required')</label>

        <div class="col-sm-10">
            <select name="skpd_id" id="skpdSelect" class="form-control"></select>
            {{-- {!! Form::select('skpd_id', '', $edit ? $data->skpd_id : old('skpd_id') ,['class' => 'form-control','id' => 'skpdSelect', 'style'=>"width: 100%;"])!!} --}}

            @if ($errors->has('skpd_id'))
                <span class="help-block">{{ $errors->first('skpd_id') }}</span>
            @endif
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button 
                type="submit" 
                class="btn btn-primary">
                    {{ $edit ? 'Update' : 'Simpan' }}
            </button>
            
            <a href="{{ route('account.index') }}" 
                class="btn btn-danger">
                    Batal
            </a>
        </div>
    </div>
</div>

@section('js')
<script>
    $(function() {
        $("#roleSelect").select2({});
        
        $("#skpdSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Pilih SKPD",
            ajax: {
                url: "{{ route('select.skpd') }}",
                dataType: 'json',
                data: function (params) {
                    return {
                        q: params.term,
                    };
                },
                processResults: function (data) {

                    var res = data.map(function (item) {
                        return {id: item.id, text: item.name};
                    });
                    
                    return {
                        results: res
                    };
                }
            }
        });
    });
</script>

@if($edit and isset($skpd) and !empty($skpd))
    <script>
        $(function(){
            
            var data = {
                id: "{{ $skpd->id }}",
                name: "{{ $skpd->name }}"
            };
            
            var newOption = new Option(data.name, data.id, false, false);
            $('#skpdSelect').append(newOption).trigger('change');
        });
    </script>
@endif

@stop
    