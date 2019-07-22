<accordiongroup>  
	<div class="accordion" id={ opts.id } role="tablist" aria-multiselectable="true">
		<yield/> 
	</div>
</accordiongroup>

<accordion>
	<div class="panel">
		<a id={ 'heading' + opts.id } class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent={ '#' + opts.parent } href={ '#child' + opts.id } aria-expanded="false" aria-controls={ opts.id }>
		  <h4 class="panel-title"> {opts.title} </h4>
		</a>
		<div id={ 'child' + opts.id } class="panel-collapse collapse" role="tabpanel" aria-labelledby={ 'heading' + opts.id }>
			<div class="panel-body">
				<yield/>
			</div>
		</div>
	</div>
</accordion>