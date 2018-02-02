<form-wizard>
   <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
          <h2 class="page-header">{opts.title}</h2>
          <div class="x_content">
              <div id="wizard" class="form_wizard wizard_horizontal">
                    <ul class="wizard_steps" >
                    <li each={ids} >
                      <a href="#" onclick="{toref}">
                      <span class="step_no">{step}</span>
                      <span class="step_descr">
                        {title}<br />
                       <!--<small>Paso {id.split("-")[1]} description</small></span>-->
                      </a>
                    </li>
                    </ul>
                    <label>{idX}</label>
                    <div id={stepcontainerid} class="stepContainer" style="height:200px;"> 
                       <yield/>
                    </div>
                    <div class="ln_solid"></div>
                    <div>
                          <a href="#" class="buttonPrevious btn btn-primary" onclick={prev}> {opts.prevbutton}</a>
                          <a href="#" class="buttonNext btn btn-success"     onclick={next}> {opts.nextbutton}</a>
                          <a href="#" class="buttonFinish btn btn-default"   onclick={return}>  {opts.donebutton}</a>  
                    </div>
             </div>
          </div>
      </div>
   </div>
   <script>
     this.return= "toRef('" + opts.return +"')"
     this.stepcontainerid='stepContainer_'.concat(opts.id)
     this.prev="prev('" + this.stepcontainerid + "')"
     this.next="next('" + this.stepcontainerid + "')"
     this.on('mount', function() {
       var innerchildren = document.getElementById(this.stepcontainerid).children;
       this.ids=[];
       for (var j = 0; j < innerchildren.length; j++) {
           this.idd=document.getElementById(this.stepcontainerid).children[j].attributes['id'].value;
           this.ids.push({
             step:j+1,
             id: this.idd,
             title:document.getElementById(this.stepcontainerid).children[j].attributes['title'].value,
             toref: "goToRef(\'" +this.idd +"','"+ j +"','"+ this.stepcontainerid + "\')"
           });
           if (j>0)
            document.getElementById(this.stepcontainerid).children[j].style.display = 'none'
       }
       var fids= 'wizardIds_'+this.stepcontainerid
       localStorage.setItem(fids,JSON.stringify(this.ids));
       this.update();
    });
   </script>
</form-wizard>