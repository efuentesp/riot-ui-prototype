<accordion>
  <div class="accordion-container">
    <div id={ opts.id + "-accordion" } >
      <div class="x_panel">
        <div class="x_title card" id={ opts.id + "-heading" }>
          <h2>{ opts.title }</h2>
          <a data-toggle="collapse" data-target={ "#" + opts.id + "-collapse" } aria-expanded="true" aria-controls="collapseOne" onclick={ changeIcon }>
            <i class="fa fa-chevron-up"/>
          </a>
          <br/>
        </div>

        <div id={ opts.id + "-collapse" } class="x_content collapse show" aria-labelledby={ opts.id + "-heading" } data-parent={ "#" + opts.id + "-accordion" }>
          <div class="card-body">
            <yield/>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    this.changeIcon = function(e){
      var isCollapsed = e.target.parentNode.ariaExpanded
      var icon =  e.target

      if (isCollapsed == "true" ){
        icon.className = "fa fa-chevron-down"
      } else {
        icon.className = "fa fa-chevron-up"
      }
    };
  </script>

  <style>
    .accordion-container a{
      float: right;
    }
  </style>

</accordion>