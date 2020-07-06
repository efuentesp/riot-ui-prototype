<message>
    <script>
        this.on('mount', function(){
            var type = opts.type ? opts.type : "warning";

            Swal.fire({
                type: type,
                title: opts.title,
                text: opts.message,
                showConfirmButton: true,
                confirmButtonText: 'Aceptar'
            })
        });
    </script>
</message>