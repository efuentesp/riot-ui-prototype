<submit-button>
  <a onclick={ redirectPage } class={ btnType() }><i class={ btnIcon() }></i> { btnLabel() }</a>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
		
		this.redirectPage = function(){
			window.location.href = "./#!" + opts.to
			window-location.reload()
		}
		
		this.on('mount', function(){
			if (opts.alert && opts.id){
				var btn = document.getElementById(opts.id)
				var alertComponents = this.parent.tags.alert
				
				btn.addEventListener("click", showAlert, true)
				
				function showAlert(){
					if(alertComponents.length){
						for (var i=0; i < alertComponents.length; i++){
							for (var i=0; i < alertComponents.length; i++){
								if(alertComponents[i].opts.id == opts.alert){
									alertComponents[i].onClickAlert()
								}
							}
						}
					} else {
						if (alertComponents.opts.id == opts.alert){
							alertComponents.onClickAlert()
						}
					}
				}
			}
		})

		var buttons = [
		  { type: "create", button: { label: "Agregar", class: "btn btn-primary", icon: "fa fa-save" } },
		  { type: "update", button: { label: "Guardar", class: "btn btn-primary", icon: "fa fa-save" } },
		  { type: "delete", button: { label: "Eliminar", class: "btn btn-danger", icon: "fa fa-trash" } },
		  { type: "unknown", button: { label: "...", class: "btn btn-default", icon: "fa fa-question" } },
		  { type: "return", button: { label: "Regresar", class: "btn btn-link", icon: "fa fa-arrow-left" } },
		  { type: "add", button: { label: "", class: "btn btn-success", icon: "fa fa-plus" } },
		  { type: "search", button: { label: "Buscar", class: "btn btn-primary", icon: "fa fa-search" } },
		  { type: "custom", button: { label: opts.caption, class: "btn btn-primary", icon: opts.icon } }
		];

		this.btnLabel = function() {
		  switch (opts.action) {
			case 'create':
			  return buttons[0].button.label;
			  break;
			case 'update':
			  return buttons[1].button.label;
			  break;
			case 'delete':
			  return buttons[2].button.label;
			  break;
			case 'return':
			  return buttons[4].button.label;
			  break;
			case 'add':
			  return buttons[5].button.label;
			  break;
			case 'search':
			  return buttons[6].button.label;
			  break;
			case 'custom':
			  return buttons[7].button.label;
			  break;
			default:
			  return opts.caption;
		  }
		}

		this.btnType = function() {
		  switch (opts.action) {
			case 'create':
			  return buttons[0].button.class;
			  break;
			case 'update':
			  return buttons[1].button.class;
			  break;
			case 'delete':
			  return buttons[2].button.class;
			  break;
			case 'return':
			  return buttons[4].button.class;
			  break;
			case 'add':
			  return buttons[5].button.class;
			  break;
			case 'search':
			  return buttons[6].button.class;
			  break;
			case 'custom':
			  var cls = "btn";
			  switch (opts.type) {
				case 'link':
				  cls = cls + " btn-link";
				  break;
			  }
			  switch (opts.state) {
				case 'default':
				  cls = cls + " btn-default";
				  break;
				case 'primary':
				  cls = cls + " btn-primary";
				  break;
				case 'danger':
				  cls = cls + " btn-danger";
				  break;
				default:
				  cls = cls + " btn-default";
			  }
			  return cls;
			  break;
			default:
			  return buttons[7].button.class;
		  }
		}

		this.btnIcon = function() {
		  switch (opts.action) {
			case 'create':
			  return buttons[0].button.icon;
			  break;
			case 'update':
			  return buttons[1].button.icon;
			  break;
			case 'delete':
			  return buttons[2].button.icon;
			  break;
			case 'return':
			  return buttons[4].button.icon;
			  break;
			case 'add':
			  return buttons[5].button.icon;
			  break;
			case 'search':
			  return buttons[6].button.icon;
			  break;
			case 'custom':
			  return buttons[7].button.icon;
			  break;
			default:
			  return buttons[3].button.icon;
		  }
		}
	</script>
</submit-button>
