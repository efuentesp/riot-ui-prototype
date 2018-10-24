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
		 <div if={this.parent.parent.opts.add && this.parent.opts.viewadd=="true"}>
		 	 <submit-button to={ this.parent.parent.opts.add } action="add"></submit-button>
		 </div>
	 </panel>
	 <panel if={opts.viewsearch!="true"} label="">
		 <div if={this.parent.parent.opts.add && this.parent.opts.viewadd=="true"}>
			  <submit-button to={ this.parent.parent.opts.add } action="add"></submit-button>
		 </div>
	 </panel>
</searchcriteria>


<searchresults>
	<table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete} imgwidth={opts.imgwidth} imgheight={opts.imgheight}/>
</searchresults>
