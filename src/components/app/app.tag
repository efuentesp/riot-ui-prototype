<app>
	<sidebar title="Monte de Piedad" icon="fa fa-montepiedad">
		<sidebar-profile
			picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			name="Juan Pérez González" role="Afiliado"/>
		<sidebar-menu>
			<menu-section title="Demos">
				<side-menu icon="fa fa-home" label="Cliente">
					<menu-item to="/cliente-administrar/" label="Mantenimiento de Clientes"/>
					<menu-item to="/cliente-agregar/"     label="Alta de Cliente"          />
					<menu-item to="/cliente-eliminar/"    label="Eliminar Cliente"         />
					<menu-item to="/cliente-editar/"      label="Editar Cliente"           />
					<menu-item to="/cliente-wizard/"      label="Cliente Wizard"           />
				</side-menu>
				<side-menu icon="fa fa-group" label="Clientes">
				  <menu-item to="/clientes-admin/"      label="Administrar Cliente"/>
				  <menu-item to="/clientes-agregar/"    label="Agregar Cliente"/>
				</side-menu>
				<side-menu icon="fa fa-cubes" label="Pedidos">
				  <menu-item to="/pedido-admin/"      label="Administrar Pedido"/>
				  <menu-item to="/pedido-agregar/"    label="Agregar Pedido"/>
				</side-menu>
				<side-menu icon="fa fa-sign-in" label="Login">
				  <menu-item to="/login/"      label="Login Form"/>
				</side-menu>
			</menu-section>
			<menu-section title="IMSS">
				<side-menu icon="fa fa-hospital-o" label="Pensiones">
					<menu-item to="/imss-registrar-pension/" label="Registrar Solicitud de Pensión"/>
				</side-menu>
			</menu-section>
			<menu-section title="Banorte">
				<side-menu icon="fa fa-bank" label="Arrendadora">
					<menu-item to="/banorte-cargos-ops/" label="Cargos Ops"/>
					<menu-item to="/banorte-cargos-ligados-contratos/" label="Cargos Ligados a Contratos"/>
				</side-menu>
			</menu-section>
			<menu-section title="Kukulkán">
				<side-menu icon="fa fa-plane" label="Vuelos">
					<menu-item to="/reservaciones/" label="Reservaciones"/>
					<menu-item to="/banorte-cargos-ligados-contratos/" label="Consulta de Vuelo"/>
					<menu-item to="/banorte-cargos-ligados-contratos/" label="Promociones"/>
				</side-menu>
			</menu-section>
			<menu-section title="Kukulkán Agencia">
				<side-menu icon="fa fa-plane" label="Vuelos">
					<menu-item to="/reservaciones-wizard/" label="Reservaciones"/>
					<menu-item to="/reservaciones-01-consultar/" label="Consulta Vuelo"/>
					<menu-item to="/reservaciones-promociones/" label="Promociones"/>
				</side-menu>
			</menu-section>
		  <menu-section title="CasperTest">
			<side-menu icon="fa fa-group" label="ClienteTest">
				<menu-item to="/clientetest-add/" label="Add"/>
			</side-menu>
		  </menu-section>
		  <menu-section title="Mandatory Test">
			<side-menu icon="fa fa-group" label="Mandatory Fields">
				<menu-item to="/mandatory-test/" label="Test"/>
			</side-menu>
		  </menu-section>
		</sidebar-menu>
	</sidebar>
  <topbar></topbar>
</app>
