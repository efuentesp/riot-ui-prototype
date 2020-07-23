<outputtext>
	<div class="form-group" id={ opts.id }  if={ !opts.orientation || opts.orientation == "vertical" }>
		<label label class="control-label">{ opts.label }</label>
		<div>
			<small>{ opts.value }</small>
		</div>
	</div>
	<div class="form-group row" id={ opts.id } if={ opts.orientation == "horizontal" }>
		<label class="control-label col-md-2 col-sm-2" >{ opts.label }</label>
		<div class="col-md-10 col-sm-10">
			<small>{ opts.value }</small>
		</div>
	</div>
	<br/>
</outputtext>
