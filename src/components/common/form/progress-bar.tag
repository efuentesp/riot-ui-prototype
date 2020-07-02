<progress-bar>
	<div class="progress" id={ opts.id }>
		<div class={ pbClass() } role="progressbar" aria-valuenow={ opts.value } aria-valuemin={ opts.minvalue } aria-valuemax={ opts.maxvalue } data-transitiongoal={ opts.value } style="width:{opts.value}%">
			{ opts.value }%
		</div>
	</div>

	<script>
		var pbarTypes = [
			{ type: "success",     pbType: { class: "progress-bar progress-bar-success progress-bar-striped active" } },
			{ type: "info",        pbType: { class: "progress-bar progress-bar-info progress-bar-striped active" } },
			{ type: "warning",     pbType: { class: "progress-bar progress-bar-warning progress-bar-striped active" } },
			{ type: "danger",      pbType: { class: "progress-bar progress-bar-danger progress-bar-striped active" } },
			{ type: "default",     pbType: { class: "progress-bar progress-bar-striped active" } }
		]
	
		
		this.pbClass = function(){
			switch (opts.type.toLowerCase()) {
				case 'success':
					return pbarTypes[0].pbType.class;
					break;
				case 'info':
					return pbarTypes[1].pbType.class;
					break;
				case 'warning':
					return pbarTypes[2].pbType.class;
					break;
				case 'danger':
					return pbarTypes[3].pbType.class;
					break;
				default:
					return pbarTypes[4].pbType.class;
					break;
			}
		}
	</script>

</progress-bar>