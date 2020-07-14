<searchpanel>
	<yield/>
</searchpanel>

<searchcriteria>
	 <formbox if={opts.viewsearch=="true"} title="Criterios de búsqueda" action="search" return="" >
			<row>
				<column size="col-md-12 col-xs-12">
					<yield/>
				</column>
			</row>
	 </formbox>
	 

	 <panel if={opts.viewsearch=="true"} label="Resultados de búsqueda">
		<div class="nav navbar-left">
			<submit-button if={this.parent.parent.opts.add && this.parent.opts.viewadd=="true"} to={ this.parent.parent.opts.add } action="add"></submit-button>
		</div>
		<div class="nav navbar-right">
			<submit-button if={this.parent.opts.exportpdf=="true"}  action="custom" icon="fa fa-file-pdf-o"/>
			<submit-button if={this.parent.opts.exportxls=="true"} action="custom" icon="fa fa-file-excel-o"/>
		</div>
	 </panel>
	 <panel if={!opts.viewsearch} label="">
	 	<div class="nav navbar-left">
			<submit-button if={this.parent.parent.opts.add && this.parent.opts.viewadd=="true"} to={ this.parent.parent.opts.add } action="add"></submit-button>
		</div>
		<div class="nav navbar-right">
			<submit-button if={this.parent.opts.exportpdf=="true"}  action="custom" icon="fa fa-file-pdf-o"/>
			<submit-button if={this.parent.opts.exportxls=="true"} action="custom" icon="fa fa-file-excel-o"/>
		</div>
	 </panel>
</searchcriteria>


<searchresults>
	<table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete} imgwidth={opts.imgwidth} imgheight={opts.imgheight} action={ opts.action } />
	<submit-button if={ opts.save=="true" }  action="update"/>
	<submit-button if={ opts.select=="true" } action="custom" icon="fa fa-check-square-o" caption="Seleccionar"/>
	<br/><br/>
</searchresults>
