<select-box>
    <div class="form-group" if={ !opts.orientation || opts.orientation == "vertical" }>
      <label if={ opts.required == 'true'} >{ opts.placeholder}<font color="red"> *</font></label>
      <label if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>
      <yield/>

      <!-- Type: Radio -->
      <div if={ opts.type == "option" } {id}>
        <div class="radio" each={ opt in this.tags["option-box"] }>
          <label><input type="radio" id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</input></label>
        </div>
      </div>  
      
      <!-- Type: Check -->
      <div if={ opts.type == "check" } {id}>
        <div class="checkbox" each={ opt in this.tags["option-box"] }>
          <label><input type="checkbox" id={ opt.opts.id } name={ "selectbox-" + opts.id }  >{ opt.opts.label }</input></label>
        </div>
      </div>

      <!-- Type: Select -->
      <div if={ opts.type == "select" } {id}>
        <select class="form-control" >
          <option disabled selected>--Seleccione una opción--</option>
          <option if={ !opts.data }  each={ opt in this.tags["option-box"] } id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</option>
          <option if={ opts.data }  each={ d, i in rows } id={ i } name={ "selectbox-" + i }>{ d }</option>
        </select>
      </div>
    </div>

    <div class="form-group row " if={ opts.orientation == "horizontal" }>
      <label class="control-label col-md-2 col-sm-2 " if={ opts.required == 'true'} >{ opts.placeholder}<font color="red"> *</font></label>
      <label class="control-label col-md-2 col-sm-2 " if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>
      <yield/>

      <!-- Type: Radio -->
      <div class="col-md-10 col-sm-10 " if={ opts.type == "option" } {id}>
        <div class="radio" each={ opt in this.tags["option-box"] }>
          <label><input type="radio" id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</input></label>
        </div>
      </div>
      
      <!-- Type: Check -->
      <div class="col-md-10 col-sm-10 " if={ opts.type == "check" } {id}>
        <div class="checkbox" each={ opt in this.tags["option-box"] }>
          <label><input type="checkbox" id={ opt.opts.id } name={ "selectbox-" + opts.id }  >{ opt.opts.label }</input></label>
        </div>
      </div>

      <!-- Type: Select -->
      <div class="col-md-10 col-sm-10 " if={ opts.type == "select" } {id}>
        <select class="form-control" >
          <option disabled selected>--Seleccione una opción--</option>
          <option if={ !opts.data }  each={ opt in this.tags["option-box"] } id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</option>
          <option if={ opts.data }  each={ d, i in rows } id={ i } name={ "selectbox-" + i }>{ d }</option>
        </select>
      </div>
    </div>

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

<option-box/>


 

