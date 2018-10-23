<simple-admin>
 <table class="table table-striped" id={opts.id}>
       <thead>
         <tr>
           <th each={headers}> {label} </th>
         </tr>
         <tr>
           <th each={header, index in headers}>
             <inputbox if={header.type==null && header.required=="true"} type="default" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type==null && (header.required=="false" || header.required==null)} type="default" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="email" && header.required=="true"} type="email" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="email" && (header.required=="false" || header.required==null)} type="email" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="password" && header.required=="true"} type="password" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="password" && (header.required=="false" || header.required==null)} type="password" placeholder={header.label} id={this.opts.id+index} />
            
             <inputbox if={header.type=="phone" && header.required=="true"} type="phone" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="phone" && (header.required=="false" || header.required==null)} type="phone" placeholder={header.label} id={this.opts.id+index} />
             
             <inputbox if={header.type=="currency" && header.required=="true"} type="currency" placeholder={header.label} id={this.opts.id+index} required="true" />
             <inputbox if={header.type=="currency" && (header.required=="false" || header.required==null)} type="currency" placeholder={header.label} id={this.opts.id+index} />
             
             <date-picker if={header.type=="date" && header.required=="true"} id={this.opts.id+index} type="date" value="" placeholder={header.label} disabled=false format="yyyy/mm/dd" mindate="2000-01-01" maxdate="2100-01-01" required="true" />
             <date-picker if={header.type=="date" && (header.required=="false" || header.required==null)} id={this.opts.id+index} type="date" value="" placeholder={header.label} disabled=false format="yyyy/mm/dd" mindate="2000-01-01" maxdate="2100-01-01" />
             
             <select-box if={header.type=="select" && header.required=="true"} id={this.opts.id+index} type="select"  required="true" data={opts.id}  fieldindex="{index}" required="true" />
             <select-box if={header.type=="select" && (header.required=="false" || header.required==null)} id={this.opts.id+index} type="select" data={opts.id}  fieldindex="{index}" />
             
             <select-auto if={header.type=="auto" && header.required=="true"} id={this.opts.id+index} data={opts.id}  fieldindex="{index}" required="true" />
             <select-auto if={header.type=="auto" && (header.required=="false" || header.required==null)} id={this.opts.id+index} data={opts.id}  fieldindex="{index}" />
             
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
           if(document.getElementById(this.opts.id+r).nodeName==='SELECT-AUTO'){
            if (document.getElementById(this.opts.id+r).children[0].innerText=="*") {
              if (document.getElementById(this.opts.id+r).children[1].value!="") {
               data[r]=document.getElementById(this.opts.id+r).children[1].value;
               document.getElementById(this.opts.id+r).children[1].value="";
              }
              else {
                missingdata=true;
              }
            }
            else{
             data[r]=document.getElementById(this.opts.id+r).children[0].value;
             document.getElementById(this.opts.id+r).children[0].value="";
            }
            }
           
           if(document.getElementById(this.opts.id+r).nodeName==='SELECT-BOX'){
             debugger;
            if (document.getElementById(this.opts.id+r).children[0].innerText=="*") {
              var index= document.getElementById(this.opts.id+r).children[1].children.length-1;
              if (document.getElementById(this.opts.id+r).children[1].children[index].value!="") {
                data[r]=document.getElementById(this.opts.id+r).children[1].children[index].value
                document.getElementById(this.opts.id+r).children[1].children[index].value="";
              }
              else {
                missingdata=true;
              }
            }
            else{
              var index= document.getElementById(this.opts.id+r).children[0].children.length-1;
              data[r]=document.getElementById(this.opts.id+r).children[0].children[index].value;
              document.getElementById(this.opts.id+r).children[0].children[index].value="";
            }
           }

           if(document.getElementById(this.opts.id+r).nodeName==='INPUTBOX'){
            if (document.getElementById(this.opts.id+r).children[0].innerText=="*") {
               if (document.getElementById(this.opts.id+r).children[1].children[1].value!="") {
                data[r]=document.getElementById(this.opts.id+r).children[1].children[1].value;
                document.getElementById(this.opts.id+r).children[1].children[1].value="";
               }
               else {
                missingdata=true;
              }
            }
            else{
               data[r]=document.getElementById(this.opts.id+r).children[0].children[1].value;
               document.getElementById(this.opts.id+r).children[0].children[1].value="";
             }
           }

           if(document.getElementById(this.opts.id+r).nodeName==='OUTPUTTEXT') {
             data[r]=document.getElementById(this.opts.id+r).children[0].children[0].textContent;
            //document.getElementById(this.opts.id+r).children[0].children[0].innerHTML="";
           }
      
           if(document.getElementById(this.opts.id+r).nodeName==='DATE-PICKER') {
            if (document.getElementById(this.opts.id+r).children[0].innerText=="*") {
              if (document.getElementById(this.opts.id+r).children[1].children[0].children[0].value!="") {
               data[r]=document.getElementById(this.opts.id+r).children[1].children[0].children[0].value;
               document.getElementById(this.opts.id+r).children[1].children[0].children[0].value="";
              }
              else {
                missingdata=true;
              }
            }
            else{
              data[r]=document.getElementById(this.opts.id+r).children[0].children[0].children[0].value;
              document.getElementById(this.opts.id+r).children[0].children[0].children[0].value="";
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
