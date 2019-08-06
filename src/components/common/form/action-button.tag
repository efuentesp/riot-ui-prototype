<action-button>
	<a href={ opts.link } class="btn btn-app" id={ opts.id }>
		<i class={ opts.icon }></i> { opts.label }
	</a>
	
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>
</action-button>