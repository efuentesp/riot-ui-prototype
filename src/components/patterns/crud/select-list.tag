<select-list>
 <div class="row">
  <div class="col-md-5 col-xs-5">
   <br/>
   <span class="section">{ opts.fromtitle }</span>
   <table id="table_source" class="table table-striped table-bordered bulk_action">
       <thead>
         <tr>
           <th></th>
           <th each={headers}> {label} </th>
         </tr>
       </thead>
       <tbody>
       <tr class="" each={row, index in rows} id={ index + 'sr' }> 
           <td>
			 <input type="checkbox" class="flat" name="ts-ckeck"> { opts.label }
           </td>
           <td each={d , i in row.data }>
            <virtual if={!d.toString().startsWith("http")}>
             {d}
            </virtual>
            <img if={d.toString().startsWith("http")} src="{d}" width="{opts.imgwidth}" height="{opts.imgheight}" /> 
           </td>
       </tr>
       </tbody>
   </table>
   <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>
  </div>
  
  <div class="col-md-1 col-xs-1">
    <br/>
    <br/>
    <br/>
    <br/>
    <button id={ "right-" + opts.id } onclick={addRightRow} class="btn btn-default btn-sm">
                <i class="fa fa-arrow-right"></i>
    </button>
    <button id={ "left-" + opts.id } onclick={addLeftRow} class="btn btn-default btn-sm">
                <i class="fa fa-arrow-left"></i>
    </button>
  </div>
  <div class="col-md-5 col-xs-5">
   <br/>
   <span class="section">{ opts.totitle }</span>
   <table id="table_target" class="table table-striped table-bordered bulk_action">
    <thead>
        <tr>
           <th></th>
           <th each={headers}> {label} </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
    </table>
    <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>
   </div>
 </div>
     <script>
      if (this.opts.imgwidth==null)
        this.opts.imgwidth =15;
      if (this.opts.imgheight==null)
        this.opts.imgheight=15;

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
	  
	  this.createCellVariables = function(numberCells){
		var cells = [];
		
		for (var i=0; i<numberCells; i++){
			cells[i] = "";
		}
		
		return cells;
	  }

	  this.addRightRow = function(e){
		var tSource = document.getElementById("table_source");
		var tTarget = document.getElementById("table_target").getElementsByTagName('tbody')[0];
		
		var checkboxes = document.getElementsByName("ts-ckeck");
		var totalCells = document.getElementById("table_source").rows[0].cells.length;
		
		for (var r = 0; r < checkboxes.length; r++){
			if ( checkboxes[r].checked ){
				var newRow = tTarget.insertRow(tTarget.length);
				var cells = this.createCellVariables(totalCells);
				
				for (var n = 0; n < totalCells; n++){
					cells[n] = newRow.insertCell(n);
				}
				
				cells[0].innerHTML = "<input type='checkbox' class='flat' name='tt-ckeck'>"
				for (var n = 1; n < totalCells; n++){
					cells[n].innerHTML = tSource.rows[r+1].cells[n].innerHTML;
				}
				
				var index = tSource.rows[r+1].rowIndex;
				tSource.deleteRow(index);
				r--;
			}
		}		
	  }
	  
	  this.addLeftRow = function(e){
		var tSource = document.getElementById("table_source").getElementsByTagName('tbody')[0];
		var tTarget = document.getElementById("table_target");
		
		var checkboxes = document.getElementsByName("tt-ckeck");
		var totalCells = document.getElementById("table_target").rows[0].cells.length;
		
		for (var r = 0; r < checkboxes.length; r++){
			if ( checkboxes[r].checked ){
				var newRow = tSource.insertRow(tSource.length);
				var cells = this.createCellVariables(totalCells);
				
				for (var n = 0; n < totalCells; n++){
					cells[n] = newRow.insertCell(n);
				}
				
				cells[0].innerHTML = "<input type='checkbox' class='flat' name='ts-ckeck'>"
				for (var n = 1; n < totalCells; n++){
					cells[n].innerHTML = tTarget.rows[r+1].cells[n].innerHTML;
				}
				
				var index = tTarget.rows[r+1].rowIndex;
				tTarget.deleteRow(index);
				r--;				
			}
		}
	  }
	  

    </script>
</select-list>
