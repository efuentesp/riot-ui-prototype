<clienteAgregar>
  <page title="Agregar Cliente" id="cliente_agregar">
    <formbox title="Datos del Cliente" action="custom" icon="fa fa-check-circle-o" button="Generar" return="/cliente-administrar/" >
  		<panel label="Datos generales">
			<row>
				<column size="col-md-6 col-xs-12">
					<inputbox type="number" id="numeroClienteAgregar"   label="Número"    placeholder="Número de Cliente" required=true    />
					<inputbox id="nombreAgregar" type="text" label="Nombre(s)" value="Héctor Javier" placeholder="Ingresa el nombre del Cliente" required=true disabled=false minsize=3 maxsize=25/>
					<inputbox id="phone-number" type="phone" value="5517005656" label="Teléfono" required=true disabled=false />
					<inputbox id="observacionesAgregar" type="textarea" lines=5 label="Observaciones" value="Estas son mis observaciones..." placeholder="Ingresa tus comentarios" required=true disabled=false minsize=3 maxsize=500 />
					<attach-photo id="foto" label="Foto" height="200" width="400" maxsizemb="7" filetypes="jpg, png, bmp" orientation="horizontal" />
					<attach-photo id="factura" label="Factura (Imagen)" height="200" width="400" maxsizemb="8" filetypes="jpg, png, bmp" />

				</column>
				<column size="col-md-6 col-xs-12">
					<inputbox id="monto-aprobado" type="currency" label="Monto del Pedido aprobado" value="100000.00"  placeholder="Ingresa el monto del Pedido aprobado" required=true disabled=false min=1.00 max=1000000.00 />
					<inputbox id="horas-aplicadas" type="float" label="Horas aplicadas" value="6.50" precision=2 placeholder="Ingresa las horas aplicadas al proyecto" required=true disabled=false min=0.50 max=8.00 />
					<inputbox id="cantidad" type="integer" label="Cantidad" value="100" placeholder="Ingresa la cantidad solicitada" required=true disabled=false min=1 max=100 />
					<inputbox id="palabra-clave" type="password" label="Password" placeholder="Ingresa tu password" required=true disabled=false minsize=6 maxsize=8 />
					<date-picker id="fecha-nacimiento" type="date" label="Fecha de Nacimiento" value="2018-02-10" placeholder="Ingresa tu fecha de nacimiento" required=true disabled=false format="yyyy/mm/dd" mindate="2018-02-02" maxdate="2018-02-15" />
					<date-picker id="alta-seguro" type="date" label="Fecha de Alta en el Seguro" value="2018-02-15" placeholder="Ingresa la fecha de alta" required=true disabled=false format="yyyy/mm/dd" mindate="2018-02-02" maxdate="2018-02-20" />
			</row>
  		</panel>
  		<panel label="Información adicional">
			<outputtext id="cliente-company" label="Client Company" value="Deveint Inc." />
			<outputtext id="project-leader" label="Project Leader" value="Tony Chicken" />
  			<inputbox type="text" id="fechaNacimiento" label="Fecha de Nacimiento"   required=false />
  			<inputbox type="text" id="creditoClienteAgregar"  label="Crédito autorizado"    placeholder="Monto máximo del Crédito autorizado"  disabled=true min=0 max=100000 />
  			<inputbox type="email" id="email"  label="Email" value="efuentes@softtek.com" placeholder="Ingresa tu correo (p.ej. ejemplo@mail.com)" required=true disabled=false />
  			<inputbox type="text" id="comentarios"     label="Comentarios"           placehoder="Ponga aquí cualquier observación importante." required=false   />
			<progress-bar id="avance-calculo" value="60" minvalue="0" maxvalue="100" type="success" />
			<progress-bar id="avance-calculo1" value="100" minvalue="0" maxvalue="100" type="info" />
			<progress-bar id="avance-calculo2" value="40" minvalue="0" maxvalue="100" type="warning" />
			<progress-bar id="avance-calculo3" value="50" minvalue="0" maxvalue="100" type="danger" />
  		</panel>
  		<panel label="Tipo de pensión">
  			<select-box id="tipoPensionOpt" type="option" placeholder="Selecciona el Tipo de Pensión deseada">
  				<option-box id="ipp" label="Incapacidad Permanente Parcial" selected=true />
  				<option-box id="ipt" label="Incapacidad Permanente Total" />
  			</select-box>
  			<select-box id="tipoPensionChk" type="check" placeholder="Selecciona el Tipo de Pensión deseada">
  				<option-box id="ipa" label="Incapacidad Permanente Parcial" selected=true />
  				<option-box id="ipb" label="Incapacidad Permanente Total" />
  			</select-box>
			<select-box id="tipoPensionSlct" type="select" placeholder="Selecciona el Tipo de Pensión deseada">
  				<option-box id="ipx" label="Incapacidad Permanente Parcial" />
  				<option-box id="ipy" label="Incapacidad Permanente Total" selected=true/>
  			</select-box>
			<select-auto id="tipoPension" placeholder="Selecciona el Tipo de Pensión deseada" required=true disabled=false>
				<option id="ipp" label="Incapacidad Permanente Parcial" />
				<option id="ipt" label="Incapacidad Permanente Total" />
			</select-auto>
  		</panel>
		<actions>
			<action-group title="Cargos">
				<action-button id="generar-cargos" label="Generar cargos" icon="fa fa-save" link="generar-cargos" />
				<action-button id="agregar-cargos" label="Agregar cargos manuales" icon="fa fa-save" link="agregar-cargos" />
			</action-group>
			<action-group title="Créditos">
				<action-button id="generar-creditos" label="Generar créditos" icon="fa fa-save" link="generar-cargos" />
				<action-button id="agregar-creditos" label="Agregar creditos manuales" icon="fa fa-save" link="agregar-cargos" />
			</action-group>
		<actions>
		<option-matrix type="Multi" id="metrix01" title="Roles vs Permissions">
			<matrix-columns>
				<matrix-column id="role01" title="Anonymus user" />
				<matrix-column id="role02" title="Authenticaded user" />
				<matrix-column id="role03" title="Admin user" />
				<matrix-column id="role04" title="Editor" />
			</matrix-columns>
			<matrix-rows>
				<matrix-group id="menu" title="Menu module">
					<matrix-row id="permission01" title="Administer menu" />
				</matrix-group>
				<matrix-group id="node" title="Node module">
					<matrix-row id="permission02" title="Access content" />
					<matrix-row id="permission03" title="Administer content types" />
					<matrix-row id="permission04" title="Administer nodes" />
					<matrix-row id="permission05" title="Create page content" />
					<matrix-row id="permission06" title="Create story content" />
					<matrix-row id="permission07" title="Delete Users" />
				</matrix-group>
			 </matrix-rows>
		</option-matrix>
		
		<counters>
			<row>
				<column size="col-md-4 col-xs-4">
					<counter value=3000 title="Total Users" subtitle="From last Week" icon="fa-clock-o" type="positive" percentage="10"/>
				</column>
				<column size="col-md-4 col-xs-4">
					<counter value=2000 title="Total Users" subtitle="From last Week" icon="fa-clock-o" type="neutral" percentage="10"/>
				</column>
				<column size="col-md-4 col-xs-4">
					<counter value=4000 title="Total Users" subtitle="From last Week" icon="fa-clock-o" type="negative" percentage="10"/>
				</column>
			</row>
		</counters>
		
		<bar-graph id="testChart">
			<labels>
				<label value="Enero"/>
				<label value="Febrero"/>
				<label value="Marzo"/>
			</labels>
			<datasets>
				<dataset label="Ventas 2011" barcolor="#26B99A">
					<data value=40/>
					<data value=10/>
					<data value=20/>
				</dataset>
				<dataset label="Ventas 2011" barcolor="#03586A">
					<data value=30/>
					<data value=60/>
					<data value=80/>
				</dataset>
			</datasets>
		</bar-graph>

		<accordion id="myAccordeon">
			<row>
				<column size="col-md-6 col-xs-12">
					<inputbox type="number" id="numeroClienteAgregar"   label="Número"    placeholder="Número de Cliente" required=true    />
					<inputbox id="nombreAgregar" type="text" label="Nombre(s)" value="Héctor Javier" placeholder="Ingresa el nombre del Cliente" required=true disabled=false minsize=3 maxsize=25/>
					<inputbox id="phone-number" type="phone" value="5517005656" label="Teléfono" required=true disabled=false />
					<inputbox id="observacionesAgregar" type="textarea" lines=5 label="Observaciones" value="Estas son mis observaciones..." placeholder="Ingresa tus comentarios" required=true disabled=false minsize=3 maxsize=500 />
					<attach-photo id="foto" label="Foto" height="200" width="400" maxsizemb="7" filetypes="jpg, png, bmp" orientation="horizontal" />
					<attach-photo id="factura" label="Factura (Imagen)" height="200" width="400" maxsizemb="8" filetypes="jpg, png, bmp" />

				</column>
				<column size="col-md-6 col-xs-12">
					<inputbox id="monto-aprobado" type="currency" label="Monto del Pedido aprobado" value="100000.00"  placeholder="Ingresa el monto del Pedido aprobado" required=true disabled=false min=1.00 max=1000000.00 />
					<inputbox id="horas-aplicadas" type="float" label="Horas aplicadas" value="6.50" precision=2 placeholder="Ingresa las horas aplicadas al proyecto" required=true disabled=false min=0.50 max=8.00 />
					<inputbox id="cantidad" type="integer" label="Cantidad" value="100" placeholder="Ingresa la cantidad solicitada" required=true disabled=false min=1 max=100 />
					<inputbox id="palabra-clave" type="password" label="Password" placeholder="Ingresa tu password" required=true disabled=false minsize=6 maxsize=8 />
					<date-picker id="fecha-nacimiento" type="date" label="Fecha de Nacimiento" value="2018-02-10" placeholder="Ingresa tu fecha de nacimiento" required=true disabled=false format="yyyy/mm/dd" mindate="2018-02-02" maxdate="2018-02-15" />
					<date-picker id="alta-seguro" type="date" label="Fecha de Alta en el Seguro" value="2018-02-15" placeholder="Ingresa la fecha de alta" required=true disabled=false format="yyyy/mm/dd" mindate="2018-02-02" maxdate="2018-02-20" />
			</row>
		</accordion>

		
		
		<submit-button id="myalertbutton" action="create" alert="myalert"/>
				<alert id="myalert" type="success" title="Registro aceptado" message="El registro ha sido aceptado" to="/cliente-administrar/"/>
				
				<submit-button id="myalertbutton2" action="delete" alert="myalert2"/>
				<alert id="myalert2" type="warning" title="Alerta" message="¿Está seguro de guardar el registro?" iscancel=true to="/cliente-administrar/"/>
		 
			<img src={ localStorage.getItem("softtekIcon") }/>
			<object class="internal" data={ localStorage.getItem("firmaPatronPdf") }> </object>

			
    </formbox>

	
  </page>
  
</clienteAgregar>