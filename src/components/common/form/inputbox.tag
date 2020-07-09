<inputbox>
	<div class="form-group" if={ !opts.orientation || opts.orientation == "vertical" }>
		<label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
		<label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
		<div class={ iBoxDiv() } id={opts.id}0>
			<span class= { iboxClass() }>
				<i class={ iboxIcon() }></i>
			</span>
			<input type={opts.type} id={opts.id} class="form-control" name="form-inputbox" placeholder={opts.placeholder} value={opts.value} >
		</div>
		<span id={opts.id}2 class="help-block"></span>
	</div>
	<div class="form-group row" if={ opts.orientation == "horizontal" }>
		<label class="control-label col-md-3 col-sm-3" if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
		<label class="control-label col-md-3 col-sm-3" if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
		<div class="col-md-9 col-sm-9">
			<div class={ iBoxDiv() } id={opts.id}0>
				<span class= { iboxClass() }>
					<i class={ iboxIcon() }></i>
				</span>
				<input type={opts.type} id={opts.id} class="form-control" name="form-inputbox" placeholder={opts.placeholder} value={opts.value} >
			</div>
			<span id={opts.id}2 class="help-block"></span>
		</div>
	</div>
  <script>

	var inputboxes = [
		{ type: "email",    inputbox: { icon: "fa fa-envelope-o", class: "input-group-addon", div: "input-group" } },
		{ type: "currency", inputbox: { icon: "fa fa-usd",        class: "input-group-addon", div: "input-group" } },
		{ type: "password", inputbox: { icon: "fa fa-lock",       class: "input-group-addon", div: "input-group" } },
		{ type: "phone",    inputbox: { icon: "fa fa-phone",      class: "input-group-addon", div: "input-group" } },
		{ type: "default",  inputbox: { icon: "",                 class: "",                  div: "form-group"  } }
	]

	this.iboxIcon = function(){
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.icon;
				break;
			case 'currency':
				return inputboxes[1].inputbox.icon;
				break;
			case 'password':
				return inputboxes[2].inputbox.icon;
				break;
			case 'phone':
				return inputboxes[3].inputbox.icon;
				break;
			default:
				return inputboxes[4].inputbox.icon;
				break;
		}
	}

	this.iboxClass = function() {
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.class;
				break;
			case 'currency':
				return inputboxes[1].inputbox.class;
				break;
			case 'password':
				return inputboxes[2].inputbox.class;
				break;
			case 'phone':
				return inputboxes[3].inputbox.class;
				break;
			default:
				return inputboxes[4].inputbox.class;
				break;
		}
	}

	this.iBoxDiv = function() {
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.div;
				break;
			case 'currency':
				return inputboxes[1].inputbox.div;
				break;
			case 'password':
				return inputboxes[2].inputbox.div;
				break;
			case 'phone':
				return inputboxes[3].inputbox.div;
				break;
			default:
				return inputboxes[4].inputbox.div;
				break;
		}
	}

	this.on('mount', function(){

		var msg = JSON.parse(localStorage.getItem("messages"));

		function setAttributes(elem, attribs) {
			for(var key in attribs) {
				if(attribs[key]){
					elem.setAttribute(key, attribs[key]);
				}
			}
		}

		function checkTypeNumber(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id+'2'];

			if ( myInputText.value ) {
				
				if(myInputText.value.includes("$")){
					var myValue = myInputText.value.split("$ ")[1];
				} else {
					var myValue = myInputText.value;
				}
				
				if ( opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float' ){

					if(! myValue.match(/^-?\d*(\.\d+)?$/)){
						mySpan.textContent = "Valor incorrecto";
					} else {
						mySpan.textContent = "";

						if( opts.precision && Number(opts.precision) > 0 ){
							myValue = Number(myValue).toFixed(opts.precision);
						} else {
							var precision = Number(localStorage.getItem('precision'));
							myValue = Number(myValue).toFixed(precision);
						}
					}
				} else {
					if(! myValue.match(/^-?\d+$/)){
						mySpan.textContent = "Valor incorrecto";
					} else {
						mySpan.textContent = "";
					}
				}
				
				if(opts.type == 'currency'){
					myInputText.value = "$ " + myValue;
				} else {
					myInputText.value = myValue;
				}
			} else {
				checkEmptyValue();
			}
		}
		
		function checkEmail(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id+'2'];
			
			if (myInputText.value){
				if (! myInputText.value.match(/^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/)){
					mySpan.textContent = "Ingrese un email válido";
				} else {
					mySpan.textContent = "";
				}
			} else {
				checkEmptyValue();
			}
		}

		function checkEmptyValue(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];

			if ( ! myInputText.value && opts.required.toLowerCase() == 'true' ) {
				mySpan.textContent = "Campo requerido";
			} else {
				mySpan.textContent = "";
			}
		}

		function checkLength(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			
			if (myInputText.value){
				if ( myInputText.value.length < opts.minsize && opts.minsize  ){
					mySpan.textContent = msg.messages[0].message.replace("&1", opts.minsize);
				} else if ( myInputText.value.length > opts.maxsize && opts.maxsize ) {
					mySpan.textContent = msg.messages[1].message.replace("&1", opts.maxsize);
				} else {
					mySpan.textContent = ""
				}
			} else {
				checkEmptyValue();
			}
		}

		function checkMinMaxValue(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			var myValue = myInputText.value;

			if (myValue){
				if(myValue.includes("$")){
					myValue = myValue.split("$ ")[1];
				}

				myValue = Number(myValue);

				if ( myValue < opts.min && opts.min ){
					mySpan.textContent = msg.messages[2].message.replace("&1", opts.min);
				} else if ( myValue > opts.max && opts.max ) {
					mySpan.textContent = msg.messages[3].message.replace("&1", opts.max);
				} else {
					mySpan.textContent = ""
					checkTypeNumber();
				}
			} else {
				checkEmptyValue();
			}
		}
		
		function checkNumberOfLines(){
			var tAreaElement = document.getElementsByTagName('textarea')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			var nLines = tAreaElement.value.split(/\r*\n/).length;
			
			if ( nLines > Number(opts.lines) ){
				mySpan.textContent = "El campo no puede tener más de " + opts.lines + " líneas";
			} else {
				mySpan.textContent = ""
			}
		}

		var iBoxComponent = document.getElementsByTagName('input')[opts.id];

		if(opts.required && opts.required.toLowerCase() == 'true'){
			iBoxComponent.addEventListener("focus", checkEmptyValue, true);
			iBoxComponent.addEventListener("change", checkEmptyValue, true);
		}

		if ( opts.disabled && opts.disabled.toLowerCase() == 'true' ){
			iBoxComponent.setAttribute("disabled", "disabled");
		}

		if ( opts.type && (opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float' || opts.type.toLowerCase() == 'integer') ){
			iBoxComponent.addEventListener("focus", checkTypeNumber, true);
			iBoxComponent.addEventListener("change", checkTypeNumber, true);
		}
		
		if ( opts.type && opts.type.toLowerCase() == 'email' ){
			iBoxComponent.addEventListener("focus", checkEmail, true);
			iBoxComponent.addEventListener("change", checkEmail, true);
		}
		
		if ( opts.type && opts.type.toLowerCase() == 'phone' ){
			iBoxComponent.setAttribute("data-inputmask", "'mask' : '(99) 9999-9999'");
		}

		if ( opts.minsize || opts.maxsize ) {
			iBoxComponent.addEventListener("focus", checkLength, true);
			iBoxComponent.addEventListener("change", checkLength, true);
		}

		if ( opts.type && (opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float' || opts.type.toLowerCase() == 'integer') && ( opts.max || opts.min ) ){
			iBoxComponent.addEventListener("focus", checkMinMaxValue, true);
			iBoxComponent.addEventListener("change", checkMinMaxValue, true);
		}

		if ( opts.type && opts.type.toLowerCase() == 'textarea' ){
			var tAreaElement = document.createElement('textarea');
			tAreaElement.innerHTML = iBoxComponent.innerHTML;
			iBoxComponent.parentNode.replaceChild(tAreaElement, iBoxComponent);

			setAttributes(tAreaElement, {
				"id": opts.id,
				"name": "form-inputbox",
				"placeholder": opts.placeholder,
				"required": opts.required,
				"data-parsley-trigger": "change",
				"data-parsley-minlength": opts.minsize,
				"data-parsley-maxlength": opts.maxsize,
				"class": "form-control"
			});
			//This is because textarea does not have a value property as such
			//That is why it is called explicitly in order to set text in textarea
			tAreaElement.value = opts.value;
		}
		
		if( document.getElementsByTagName('textarea')[opts.id] ){
			var tArea = document.getElementsByTagName('textarea')[opts.id];
			
			if( opts.lines && Number(opts.lines) > 0 ){
				tArea.addEventListener("focus", checkNumberOfLines, true);
				tArea.addEventListener("change", checkNumberOfLines, true);
			}
			
		}
	})
  </script>
</inputbox>
