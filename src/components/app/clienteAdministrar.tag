<clienteAdministrar>
  <page id="mantenimientoClientes" title="Mantenimiento de Clientes" title="Mantenimiento de Clientes" description="Administración de Clientes">
      <searchpanel add="/cliente-agregar/">
         <searchcriteria>
             <search id="criterioBusqueda" type="text" caption="Buscar" placeholder="Criterio de Búsqueda"> </search>
         </searchcriteria>
         <searchresults pagination="true" id="mantenimientoClientes" edit="/cliente-editar/" delete="/cliente-eliminar/">
         </searchresults>
      </searchpanel>
			<select-auto id="ClienteDir" type="select" placeholder="ClienteDir" data="mantenimientoClientesSimpleAdmin" required=true fieldindex="2"/>
			
      <simple-admin id="mantenimientoClientesSimpleAdmin" maxrows="8"/>
      <select-list id="mantenimientoClientes" fromtitle="Lista de Clientes" totitle="Lista de Clientes elegidos"/>
  
      <search-box id="searchboxsample" link="examplemodal" caption="Cliente" placeholder="Cliente Multi"/> 
      <modal-box id="examplemodal"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-Multi" action="select-multi" link="searchboxsample"/>
  
      <search-box id="searchboxsample2" link="examplemodal2" caption="Cliente2" placeholder="Cliente One"/> 
      <modal-box id="examplemodal2"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-One" action="select-one" pagination="true" link="searchboxsample2"/>
      
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

	  
  </page>
</clienteAdministrar>
