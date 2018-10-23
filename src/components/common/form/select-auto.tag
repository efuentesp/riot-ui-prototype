<select-auto>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.placeholder }<font color="red"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.placeholder }</label>
	<input id={ "auto-" + opts.id  } class="form-control">
	
	<div id={ "opts-" + opts.id } style="display: none;">
	    <yield/>
		<option each={d , i in rows }  id={i} label={d}/>
	</div>
	<span  class="help-block"></span>
	<script>
      this.on('before-mount', function(){
       if (this.opts.data!=null) {
        if (this.opts.fieldindex=='undefined')
          this.opts.fiedlindex=0;
        this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.data));
         for (var i=0; i < this.headers.length; i++)
           {
             if (this.headers[i].data!='undefined' && i==this.opts.fieldindex)
		          this.rows= this.headers[i].data;  
           }
	     }
	  });
		
	  this.on('mount', function(){
        function setAutocomplete(){
				var id = "#auto-" + opts.id;
				var divId = "#opts-" + opts.id
				
				var optionsAvailable = [];
				
				$( divId ).children("option").each(function(){
					var option = $( this ).attr("label");
					optionsAvailable.push(option);
				});
				
				$( id ).autocomplete({
					source: optionsAvailable
				});
		}
			
		var inputAutocomplete = document.getElementById( "auto-" + opts.id );
		inputAutocomplete.addEventListener("mouseover", setAutocomplete);
			
	  });
	</script>
</select-auto>
