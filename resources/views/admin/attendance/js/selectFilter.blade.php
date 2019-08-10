<script>
    $(function() {

        $("#workPackageSelect").select2({
            dropdownAutoWidth : true,
            width: '100%',
            placeholder: "Pilih Paket Pekerjaan",
            ajax: {
                url: "{{ route('select.workPackage') }}",
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