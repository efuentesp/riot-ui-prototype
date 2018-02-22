<table-results>
  <table class="table table-striped">
       <thead>
         <tr>
           <th each={headers}> {label} </th>
           <th></th>
           <th></th>
         </tr>
       </thead>
       <tbody>
       <tr each={rows}>
           <td each={d , i in data }>
             {d}
           </td>
           <td>
               <edit-button if={opts.edit} to={ opts.edit }></edit-button>
               <delete-button if={opts.delete} to={ opts.delete }></delete-button>
           </td>
           <td >
              <div style="position:relative">
               <button  each={actions}  data-toggle="dropdown" class="btn btn-primary btn-sm dropdown-toggle" type="button" aria-expanded="false">{group} <span class="caret"></span>
               </button>
               <ul each={actions}  role="menu" class="dropdown-menu" >
                <li each={actions}>
                 <a href={link}>{label}</a>
                </li>
               </ul>
              </div>
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
      if (localStorage.getItem('actions2_'+ this.opts.id) !== 'undefined'){
          this.actions2    = JSON.parse(localStorage.getItem('actions2_'+ this.opts.id));
          console.log(this.actions2)
      }
      this.goToRef = function(e){
			  toRef(e.item.link);
		  };
    </script>
</table-results>
