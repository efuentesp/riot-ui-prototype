<clienteAdministrar>
  <page id="mantenimientoClientes" title="Mantenimiento de Clientes" title="Mantenimiento de Clientes" description="Administración de Clientes">
      <searchpanel add="/cliente-agregar/">
         <searchcriteria>
             <search id="criterioBusqueda" type="text" caption="Buscar" placeholder="Criterio de Búsqueda"> </search>
         </searchcriteria>
         <searchresults pagination="true" id="mantenimientoClientes" edit="/cliente-editar/" delete="/cliente-eliminar/" imgwidth="15">
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
		<action-button icon="fa fa-info" id="action-button"  label="Boton de Riot mostrar contenido inicial del correo."/>
		</br>
		<label>Correo con validación</label>
	    <stk-input
                  type="email2"
                  default-value="a@hotmail.com"
                  value="a@hotmail.com"
                  min=7
                  max=17
                  placeholder="Email..."
				  id="stk-input1"
        ></stk-input>
        <label>Texto libre</label>
		<stk-input
                  default-value=""
                  value="ABCDE"
                  placeholder="Placeholder..."
                  allow-clear
                  id="stk-input0"
        ></stk-input>
		<label>Currency</label>
		<stk-input
                  type="currency"
                  default-value="1"
                  value="10"
                  step="0.1"
                  min=1
                  max=10
                  placeholder="Currency..."
				  id="stk-input1"
        ></stk-input>
		<label>Telefono</label>
        <stk-input
                  type="phone"
                  default-value="+52 1 999 99 99"
                  value=""
                  placeholder="Phone..."
				  id="stk-input2"
        ></stk-input>
		
		</panel>
  </page>
</clienteAdministrar>
<script>
this.on('mount', function(){
  //Ejemplo de como acceder al atributo min del componente de Stenciljs
 function aler() {
  var el = document.getElementById("stk-input1"); 
  alert("Contenido del valor minimo del correo : "+el.min.toString())
 }

 function aler2() {
  var el = document.getElementById("stk-input1"); 
  alert("Contenido inicial del correo : "+el.value.toString())
 }
 
 function load() { 
   //var el = document.getElementById("stk-input1"); 
   //el.addEventListener("click", aler, false); 

   var e2 = document.getElementById("action-button"); 
   e2.addEventListener("click", aler2, false); 
 }

 document.addEventListener("mouseover", load);
});
</script>

