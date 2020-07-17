<simple-admin>
 <table class="table table-striped" id={opts.id}>
       <thead>
         <tr>
          <td each={ header }/>
         <tr>
         <tr>
           <th each={header, index in headers}>
             <inputbox if={header.type==null && header.required=="true"} label={header.label} type="default" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type==null && (header.required=="false" || header.required==null)} label={header.label} type="default" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="email" && header.required=="true"} label={header.label} type="email" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="email" && (header.required=="false" || header.required==null)} label={header.label} type="email" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="password" && header.required=="true"} label={header.label} type="password" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="password" && (header.required=="false" || header.required==null)} label={header.label} type="password" placeholder={header.label} id={this.opts.id+index} />
            
             <inputbox if={header.type=="phone" && header.required=="true"} label={header.label} type="phone" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="phone" && (header.required=="false" || header.required==null)} label={header.label} type="phone" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="currency" && header.required=="true"} label={header.label} type="currency" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="currency" && (header.required=="false" || header.required==null)} label={header.label} type="currency" placeholder={header.label} id={this.opts.id+index} />
             
             <date-picker if={header.type=="date" && header.required=="true"} id={this.opts.id+index} label={ header.label } type="date" value="" placeholder={header.label} disabled=false format="yyyy/mm/dd"  required="true" />
             <date-picker if={header.type=="date" && (header.required=="false" || header.required==null)} id={this.opts.id+index} label={ header.label } type="date" value="" placeholder={header.label} disabled=false format="yyyy/mm/dd" />
             
             <select-box if={header.type=="select" && header.required=="true"} id={this.opts.id+index} placeholder={ header.label }  type="select"  required="true" data={opts.id}  fieldindex="{index}" required="true" />
             <select-box if={header.type=="select" && (header.required=="false" || header.required==null)} placeholder={ header.label } id={this.opts.id+index} type="select" data={opts.id}  fieldindex="{index}" />


             <select-auto if={header.type=="auto" && header.required=="true"} placeholder={ header.label } id={this.opts.id+index} data={opts.id}  fieldindex="{index}" required="true" />
             <select-auto if={header.type=="auto" && (header.required=="false" || header.required==null)} placeholder={ header.label } id={this.opts.id+index} data={opts.id}  fieldindex="{index}" />
             
             <checkbox if={header.type=="boolean" && header.required=="true"} label={ header.label } required="true" id={this.opts.id+index} data={opts.id}  fieldindex="{index}" />
             <checkbox if={header.type=="boolean" && (header.required=="false" || header.required==null)} label={ header.label } required="false" id={this.opts.id+index} data={opts.id}  fieldindex="{index}" />

             <outputtext if={header.type=="output"} id={this.opts.id+index}  label={header.label}/>
             </th>
           <th>
              <a onclick={addRow} class="btn btn-default btn-sm btn-th">
                <i class="fa fa-plus"></i>
              </a>
           </th>
         </tr>
       </thead>
       <tbody>
       <tr each={row, index in rows}>
           <td each={d , i in row.data }>
             {d}
           </td>
           <td>
               <a onclick={removeRow} class="btn btn-default btn-sm">
                 <i class="fa fa-trash"></i>
               </a>
           </td>
       </tr>
       </tbody>
    </table>
    <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>

     <script>
      this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.id));
      this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.id));
      for (var i=0; i < this.rows.length; i++)
      {
        for (var j=0; j < this.rows[i].data.length; j++){
          if (this.headers[j].type!=null) {
           if (this.headers[j].type=='currency') {
              if (this.headers[j].precision!=null)  {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : this.headers[j].precision, minimumFractionDigits : this.headers[j].precision })
              }
              else
              {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : localStorage.getItem('precision'), minimumFractionDigits : localStorage.getItem('precision') })
              }
           }
           else
           {
             this.rows[i].data[j]= this.rows[i].data[j]
           }
          }
          else{
           this.rows[i].data[j]= this.rows[i].data[j]
          }
        }
      }

      if (localStorage.getItem('actions_'+ this.opts.id) !== 'undefined'){
          this.actions    = JSON.parse(localStorage.getItem('actions_'+ this.opts.id));
      }

    this.removeRow = function(e){
        
        this.rows.splice(e.item.index,1);
        
	  }

    this.addRow = function(e){
         if (this.rows.length < this.opts.maxrows) {
         var data=[]
         var missingdata=false;
         for (var r = 0; r < this.headers.length; r++){

           var headerElement = document.getElementById(this.opts.id+r);

           // ----- CHECKBOX -----
           if(headerElement.nodeName === 'CHECKBOX'){
             if(headerElement.getElementsByTagName("FONT")[0] && headerElement.getElementsByTagName("FONT")[0].innerText.trim() == "*"){
               if(headerElement.getElementsByTagName("INPUT")[0].checked){
                data[r] = headerElement.getElementsByTagName("INPUT")[0].checked
               } else {
                 missingdata=true;
               }
             } else {
               data[r] = headerElement.getElementsByTagName("INPUT")[0].checked ? true : "false";
             }
           }

           // ----- SELECT-AUTO -----
           if(headerElement.nodeName === 'SELECT-AUTO'){
             if(headerElement.getElementsByTagName("FONT")[0] && headerElement.getElementsByTagName("FONT")[0].innerText.trim() == "*"){
               if(headerElement.getElementsByTagName("INPUT")[0].value != ""){
                 data[r] = headerElement.getElementsByTagName("INPUT")[0].value
                 headerElement.getElementsByTagName("INPUT")[0].value = ""
               } else {
                 missingdata=true;
               }
             } else {
               data[r] = headerElement.getElementsByTagName("INPUT")[0].value
               headerElement.getElementsByTagName("INPUT")[0].value = ""
             }
           }
           
           // ----- SELECT-BOX -----
           if(document.getElementById(this.opts.id+r).nodeName === 'SELECT-BOX'){
            var optionLength = document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children.length-1;
            if (document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0] && document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0].innerText.trim() == "*") {
              for(var i = 0; i <= optionLength; i ++){
                if(document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].id !== "" ){
                  if(document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].selected){
                    data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].value
                  }
                }
                if (document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].id == "" && document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].selected){
                  missingdata=true;
                }
              }
            }
            else{
              for(var i = 0; i <= optionLength; i ++){
                if(document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].selected && i !== 0){
                  data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("SELECT")[0].children[i].value
                }
              }
              
            }
           }
           
           // ----- INPUT-BOX -----
           if(document.getElementById(this.opts.id+r).nodeName === 'INPUTBOX'){
             if(document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0] && document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0].innerText.trim() == "*"){
               if(document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value != ""){
                 data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value
                 document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value = ""
               } else {
                 missingdata=true;
               }
             } else {
               data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value
               document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value = ""
             }
           }

           // ----- OUTPUTTEXT -----
           if(document.getElementById(this.opts.id+r).nodeName==='OUTPUTTEXT') {
             data[r]=document.getElementById(this.opts.id+r).children[0].children[0].textContent;
            //document.getElementById(this.opts.id+r).children[0].children[0].innerHTML="";
           }
           
           // ----- DATE-PICKER -----
           if(document.getElementById(this.opts.id+r).nodeName === 'DATE-PICKER') {
             if(document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0] && document.getElementById(this.opts.id+r).getElementsByTagName("FONT")[0].innerText.trim() == "*"){
               if(document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value != ""){
                 data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value
                 document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value = ""
               } else {
                 missingdata=true;
               }
             } else {
               data[r] = document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value
               document.getElementById(this.opts.id+r).getElementsByTagName("INPUT")[0].value = ""
             }
           }
         }

        
         if (missingdata==false)
           this.rows.push({"id":"1", "data":data });
         }
         
    }

    </script>

  <style>
    .btn-th {
      margin-bottom: 12px;
    }
  </style>
</simple-admin>
