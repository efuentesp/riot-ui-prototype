<alert>
	<script>
		this.onClickAlert = function(){
			var isCancel = (opts.iscancel === 'true')
			Swal.fire({
				type: opts.type,
				title: opts.title,
				text: opts.message,
				cancelButtonColor: '#d33',
				showCancelButton: isCancel,
				showConfirmButton: true,
				confirmButtonText: 'Aceptar',
				cancelButtonText: 'Cancelar'
			}).then(res => {
				if( res.value && opts.to){
					window.location.href = "./#!" + opts.to;
					window.location.reload()
				}
				
			})
		}
	</script>
</alert>