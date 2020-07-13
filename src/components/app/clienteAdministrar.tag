<clienteAdministrar>
  <page id="mantenimientoClientes" title="Mantenimiento de Clientes" title="Mantenimiento de Clientes" description="Administración de Clientes">
      <searchpanel add="/cliente-agregar/">
         <searchcriteria viewadd="true" exportpdf="true" exportxls="true">
             <search id="criterioBusqueda" type="text" caption="Buscar" placeholder="Criterio de Búsqueda"> </search>
         </searchcriteria>
         <searchresults pagination="true" id="mantenimientoClientes" edit="/cliente-editar/" delete="/cliente-eliminar/" imgwidth="15" select="true" save="true">
         </searchresults>
      </searchpanel>
			<select-auto id="ClienteDir" type="select" placeholder="ClienteDir" data="mantenimientoClientesSimpleAdmin" required=true fieldindex="2"/>
			
      <simple-admin id="mantenimientoClientesSimpleAdmin" maxrows="8"/>
      <select-list id="mantenimientoClientes" fromtitle="Lista de Clientes" totitle="Lista de Clientes elegidos" imgheight="20" imgwidth="25"/>
  
      <search-box id="searchboxsample" link="examplemodal" caption="Cliente" placeholder="Cliente Multi"/> 
      <modal-box id="examplemodal"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-Multi" action="select-multi" link="searchboxsample"/>
  
      <search-box id="searchboxsample2" link="examplemodal2" caption="Cliente2" placeholder="Cliente One"/> 
      <modal-box id="examplemodal2"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-One" action="select-one" pagination="true" link="searchboxsample2"/>

	  <date-time-picker  id="datetime1" label="Fecha1"/>
	  <checkbox label="true" id="id1" checked="true"/>
	  <checkbox label="false" id="id2" checked="false"/>
	  <tablist id="tablist_example">
			   <tabitem id="tab_content1"  label="Home">
				  <p>xxFood truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
					 booth letterpress, commodo enim craft beer mlkshk </p>
			   </tabitem>
			   <tabitem id="tab_content2"  label="Profile1">
				  <p> hola mundo </p>
			   </tabitem>
			   <tabitem id="tab_content3"  label="Profile2">
				 <panel label="Generales">
					<row>
					 <column size="col-md-6 col-xs-12">
					   <inputbox id="numero-cliente" type="text" label="Número" value="" placeholder="Número del Cliente" required=true disabled=false minsize=3 maxsize=100 />
					   <inputbox id="nombre-cliente" type="text" label="Nombre" value="" placeholder="Nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
					 </column>
					 <column size="col-md-6 col-xs-12">
					   <inputbox id="direccion" type="textarea" lines=5 label="Dirección" value="" placeholder="Dirección del Cliente" required=true disabled=false minsize=3 maxsize=500 />
					 </column>
					</row>
				 </panel>
			   </tabitem>
		</tablist>	
		<time-picker id="timepicker" label="Hora"/>
		<panel label="Ejemplos de stk-input de Stenciljs">
		  <h1>Softtek Web Components</h1>
      <br/>
      <stk-input
        type="text"
        default-value=""
        value="ABCDE"
        placeholder="Placeholder..."
        allow-clear
        minsize=2
        maxsize=10
        required
        label="Input Texto"
        orientation="horizontal"
      ></stk-input>
      </br>
      <stk-input
        type="text"
        default-value=""
        value="ABCDE"
        placeholder="Placeholder..."
        allow-clear
        minsize=2
        maxsize=12
        required
        label="Input Texto Vertical (default)"
      ></stk-input>
      </br>
      <stk-input
        type="email"
        default-value="a@hotmail.com"
        value="a@hotmail.com"
        min=7
        max=16
        required=true
        allow-clear
        placeholder="Email..."
        label="Intput Email"
        orientation="horizontal"
        id="stk-input1"
      ></stk-input>
      <span>
        <label> Botón de Riot para mostrar el contenido inicial del input email de Stenciljs.</label>
        <action-button icon="fa fa-info" id="action-button"  label="Show email value"/>
      </span>
      </br>
      <stk-input
        label="Input Moneda"
        type="currency"
        default-value="10.0"
        value="10.0"
        step=".01"
        min=2
        max=11
        allow-clear
        placeholder="Currency..."
      ></stk-input>
      </br>
      <stk-input
        label="Input Entero"
        type="integer"
        default-value="13"
        value="13"
        step="1"
        min=3
        max=14
        allow-clear
        placeholder="Entero..."
      ></stk-input>
      </br>
      <stk-input
        label="Input Teléfono"
        type="phone"
        default-value="+52 1 999 99 99"
        value=""
        minsize=10
        maxsize=20
        allow-clear
        placeholder="Phone..."
      ></stk-input>
      </br>
      <stk-input
        label="Input Deshabilitado"
        default-value="Disabled"
        placeholder="Placeholder..."
        allow-clear
        disabled
      ></stk-input>
      </br>
      <stk-input
        label="Input Contraseña"
        type="password"
        default-value="123"
        placeholder="Password"
        minsize=1
        maxsize=10
        allow-clear
        required
      ></stk-input>
      </br>
      <stk-input
        label="Area de Texto"
        type="text-area"
        default-value="Texto"
        placeholder="Text Area"
        rows=3
      ></stk-input>

		</panel>
  </page>
</clienteAdministrar>
<script>
  //Ejemplo de como acceder al atributo value del componente de Stenciljs
 
  function alerta() {
   var el = document.getElementById("stk-input1"); 
   alert("Contenido inicial del correo : "+el.value.toString())
  }
 
  var e2 = document.getElementById("action-button"); 
  e2.addEventListener("click", alerta, false); 
</script>

