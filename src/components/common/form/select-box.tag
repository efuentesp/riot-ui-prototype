<select-box>
	<label if={ opts.required == 'true'} >{ opts.placeholder}<font color="red"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>

	
	<div id={ opts.id }>
		<yield/>
		<option-box each={d , i in rows } id={i} label={d}/>
	</div>
	<br/>
	
    <script>
	  if (this.opts.data!=null) {
      if (this.opts.fieldindex=='undefined')
        this.opts.fiedlindex=0;
      this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.data));
       if (this.opts.data!=null) {
         this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.data));
         for (var i=0; i < this.headers.length; i++)
           {
             if (this.headers[i].data!='undefined' && i==this.opts.fieldindex)
                this.rows= this.headers[i].data;  
           }
	     } 
	  }
    </script>

</select-box>
 
