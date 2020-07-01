<table-results>
  <table class="table table-striped bulk_action">
    <thead>
      <tr class="headings">
        <th if={opts.action=="select-multi" }>
          <input type="checkbox" id="check-all" class="flat">
        </th>
        <th if={opts.action=="select-one" }>
        </th>
        <th each={header in headers} if={ header.type != "simple-selection" && header.type != "multiple-selection" && header.type != "combo-selection" }> { header.label } </th>
        <th each={header in headers} if={ header.type == "simple-selection"  && header.id }> { header.label } </th>
        <th each={header in headers} if={ header.type == "multiple-selection" && header.id }>
          { header.label } <input type="checkbox" name={ header.id + "-parent-check" } onclick={ checkAll }>
        </th>
        <th each={header in headers} if={ header.type == "combo-selection" && header.id }>
          { header.label }
          <select name={ header.id + "-parent-select" } class="form-control" onchange={ selectAll }>
            <option disabled=true selected=true> ---Seleccione una opción--- </option>
            <option each={opt in header.opts} id={ opt.id }> { opt.label } </option>
          </select>
        </th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr each={row, j in rows} class="even pointer">
        <td if={opts.action=="select-one" } class="a-center ">
          <input type="radio" class="flat" name="table_records" style="position: absolute;">
        </td>
        <td if={opts.action=="select-multi" } class="a-center ">
          <input type="checkbox" class="flat" name="table_records">
        </td>
        <td each={d , i in row.data }>
          <virtual if={!d.toString().startsWith("http")}>
            <raw html="{d}"></raw>
          </virtual>
          <img if={d.toString().startsWith("http")} src="{d}"  width="{opts.imgwidth}" height="{opts.imgheight}" />
        </td>
        <td class="a-center" each={header in headers} if={ header.type=="simple-selection" && header.id }>
          <input type="radio" class="flat" style="position: absolute;" name={ header.id + "-table-radio-child" }>
        </td>
        <td class="a-center" each={header in headers} if={ header.type=="multiple-selection" && header.id }>
          <input type="checkbox" name={ header.id + "-child-check" }>
        </td>
        <td class="a-center" each={header in headers} if={ header.type=="combo-selection" && header.id }>
          <select name={ header.id + "-child-select" } class="form-control">
            <option disabled=true selected=true> ---Seleccione una opción--- </option>
            <option each={opt in header.opts} id={ opt.id }> { opt.label } </option>
          </select>
        </td>
        <td>
          <edit-button if={opts.edit} to={ opts.edit }></edit-button>
          <delete-button if={opts.delete} to={ opts.delete }></delete-button>
        </td>
        <td if={!opts.modal}>
          <div style="position:relative">
            <button each={row.actions} data-toggle="dropdown" class="btn btn-default btn-sm dropdown-toggle" type="button" aria-expanded="false">
              <i class="fa fa-sitemap"></i> {group}
              <span class="caret"></span>
            </button>
            <ul each={row.actions} role="menu" class="dropdown-menu">
              <li each={actions}>
                <a href={link}>
                  <i class="fa fa-chain"></i> {label}
                </a>
              </li>
            </ul>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
  <pagination-bar if={opts.pagination=="true" } label="Total de registros encontrados: {this.rows.length}" previous="Anterior"
    next="Siguiente" />

  <script>

    this.checkAll = function (e){
      var childCheckName = e.target.name.split('-')[0] + "-child-check"
      var childChecks =  document.getElementsByName(childCheckName)

      if(e.target.checked){
        childChecks.forEach(element => element.checked = true )
      } else {
        childChecks.forEach(element => element.checked = false )
      }
    };

    this.selectAll = function(e){
      var idOptionSelected = opts = e.target.selectedOptions[0].id;
      var childSelectName = e.target.name.split('-')[0] + "-child-select"
      var childSelects = document.getElementsByName(childSelectName)

      childSelects.forEach(function(s){
        for(var i=0; i < s.options.length; i++){
          if(s.options[i].id == idOptionSelected){
            s.options[i].selected = true
          }
        }
      })
    }

    if (this.opts.imgwidth==null)
        this.opts.imgwidth =15;
    if (this.opts.imgheight==null)
        this.opts.imgheight=15;
    this.headers = JSON.parse(localStorage.getItem('header_' + this.opts.id));
    this.rows = JSON.parse(localStorage.getItem('rows_' + this.opts.id));

    for (var i = 0; i < this.rows.length; i++) {
      for (var j = 0; j < this.rows[i].data.length; j++) {
        if (this.headers[j].type != null) {
          if (this.headers[j].type == 'currency') {
            if (this.headers[j].precision != null) {
              this.rows[i].data[j] = '$' + (Number(this.rows[i].data[j])).toLocaleString('en-US', {
                style: 'decimal',
                maximumFractionDigits: this.headers[j].precision,
                minimumFractionDigits: this.headers[j].precision
              })
            } else {
              this.rows[i].data[j] = '$' + (Number(this.rows[i].data[j])).toLocaleString('en-US', {
                style: 'decimal',
                maximumFractionDigits: localStorage.getItem('precision'),
                minimumFractionDigits: localStorage.getItem('precision')
              })
            }
          } else {
            this.rows[i].data[j] = this.rows[i].data[j]
          }
        } else {
          this.rows[i].data[j] = this.rows[i].data[j]
        }
      }
    }

    if (localStorage.getItem('actions_' + this.opts.id) !== 'undefined') {
      this.actions = JSON.parse(localStorage.getItem('actions_' + this.opts.id));
    }
    this.goToRef = function (e) {
      toRef(e.item.link);
    };
    
  </script>
</table-results>
