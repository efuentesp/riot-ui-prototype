
<clientetest-add>
	<page id="clientetest-add" title="Agregar ClienteTests">
		<formbox title="Datos del ClienteTest" icon="fa fa-check-circle-o" action="create" return="clienteTest-admin">
			<div class="row">
				<div class="col-md-4">	
				<inputbox id="Direccion" type="text" label="Direccion" value="" placeholder="Direccion del ClienteTest" required=true disabled=false />
				</div>
			
			<p hidden>1</p>
				<div class="col-md-4">	
				<inputbox id="Domicilio" type="text" label="Domicilio" value="" placeholder="Domicilio del ClienteTest" required=true disabled=false />
				</div>
			
			<p hidden>2</p>
				<div class="col-md-4">	
				<inputbox id="Calle" type="text" label="Calle" value="" placeholder="Calle del ClienteTest" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>3</p>
			<div class="row">
				<div class="col-md-4">	
				<inputbox id="CodigoPostal" type="text" label="CodigoPostal" value="" placeholder="CodigoPostal del ClienteTest" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>4</p>
			<div class="row">
				<div class="col-md-4">
				<select-box id="ClienteDir" type="select" placeholder="ClienteDir" data="mantenimientoClientesSimpleAdmin" required=true fieldindex="2">
				</select-box>
				</div>
			</div>
		</formbox>
	</page>
</clientetest-add>	
