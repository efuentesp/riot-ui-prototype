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
          <option each={ opt in this.tags["option-box"] } id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</option>
        </select>
      </div>
    </div>

    <div class="form-group row " if={ opts.orientation == "horizontal" }>
      <label class="control-label col-md-3 col-sm-3 " if={ opts.required == 'true'} >{ opts.placeholder}<font color="red"> *</font></label>
      <label class="control-label col-md-3 col-sm-3 " if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>
      <yield/>

      <!-- Type: Radio -->
      <div class="col-md-9 col-sm-9 " if={ opts.type == "option" } {id}>
        <div class="radio" each={ opt in this.tags["option-box"] }>
          <label><input type="radio" id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</input></label>
        </div>
      </div>
      
      <!-- Type: Check -->
      <div class="col-md-9 col-sm-9 " if={ opts.type == "check" } {id}>
        <div class="checkbox" each={ opt in this.tags["option-box"] }>
          <label><input type="checkbox" id={ opt.opts.id } name={ "selectbox-" + opts.id }  >{ opt.opts.label }</input></label>
        </div>
      </div>

      <!-- Type: Select -->
      <div class="col-md-9 col-sm-9 " if={ opts.type == "select" } {id}>
        <select class="form-control" >
          <option disabled selected>--Seleccione una opción--</option>
          <option each={ opt in this.tags["option-box"] } id={ opt.opts.id } name={ "selectbox-" + opts.id }>{ opt.opts.label }</option>
        </select>
      </div>
    </div>

</select-box>

<option-box/>


 

